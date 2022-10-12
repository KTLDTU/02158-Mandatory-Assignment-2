#define N 2
#define P(s) atomic{s > 0 -> s--}
#define V(s) atomic{s++}
int upSem = 1;
int downSem = 1;

int up = 0;
int down = 0;

int inDownSem = 1;
int inUpSem = 1;



/* Alley safety property: up == 0 || down == 0) */

active [N] proctype Car() {
	int temp;
do
	:: _pid == 0 -> assert(!(up > 0 && down > 0));
	:: _pid > 0 -> skip;

enter:
	 if
		:: _pid < 5 -> P(downSem);
		P(inDownSem);
		if 
			:: down == 0 -> P(upSem); down++;
			:: else -> down++; skip;
		fi; 
		V(inDownSem);
		
		V(downSem);
		:: else -> P(upSem);
		P(inUpSem);
		if
			:: up == 0 -> P(downSem); up++;
			:: else -> up++; skip
		fi;
		V(inUpSem);

		V(upSem);
	fi;

leave:
	if
		:: _pid < 5 -> P(inDownSem);
		if 
			:: down == 0 -> V(upSem)
			:: else -> skip;
		fi; 
		V(inDownSem);
		:: else ->  P(inUpSem);
		up--;
		if
			:: up == 0 -> V(downSem)
			:: else -> skip
		fi;
		V(inUpSem);
	fi;
od;
}

ltl fejl { [] (Car[1]@enter -> <>(Car[1]@leave))}
