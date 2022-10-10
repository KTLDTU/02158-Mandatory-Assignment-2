#define N 9
#define P(s) atomic{s > 0 -> s--}
#define V(s) atomic{s++}
int upSem = 1;
int downSem = 1;

int up = 0;
int down = 0;

/* Alley safety property: up == 0 || down == 0) */

active [N] proctype Car() {
	int temp;
do
	:: _pid == 0 -> assert(!(up > 0 && down > 0));
	:: _pid > 0 -> skip;

enter:
	 if
		:: _pid < 5 -> P(downSem);
		if 
			:: down == 0 -> atomic { P(upSem); down++;}
			:: else -> down++; skip;
		fi;
		V(downSem);
		:: else -> P(upSem);
		if
			:: up == 0 -> atomic { P(downSem); up++; }
			:: else -> up++; skip
		fi;
		V(upSem);
	fi;

leave:
	if
		:: _pid < 5 -> down--;
		if 
			:: down == 0 -> V(upSem)
			:: else -> skip;
		fi;
		:: else -> up--;
		if
			:: up == 0 -> V(downSem)
			:: else -> skip
		fi;
	fi;
od;
}