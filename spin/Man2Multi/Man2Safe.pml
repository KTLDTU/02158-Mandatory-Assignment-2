#define N 9
#define P(s) atomic{s > 0 -> s--}
#define V(s) atomic{s++}
int upSem = 1;
int downSem = 1;

int up = 0;
int down = 0;

int inDownSem = 1;
int inUpSem = 1;
int inEnterSem = 1;

/* Alley safety property: up == 0 || down == 0) */

active [N] proctype Car() {
	int temp;
do
	:: _pid == 0 -> break;
	:: _pid > 0 -> skip;

enter:
	 if
		:: _pid < 5 ->

		P(inEnterSem);
		P(downSem);
		P(inDownSem);

		if 
			:: down == 0 -> P(upSem); down++;
			:: else -> down++; skip;
		fi;

		V(inDownSem);
		V(downSem);
		V(inEnterSem);

		:: else ->

		P(inEnterSem);
		P(upSem);
		P(inUpSem);

		if
			:: up == 0 -> P(downSem); up++;
			:: else -> up++; skip
		fi;

		V(inUpSem);
		V(upSem);
		V(inEnterSem);
	fi;

leave:
	if
		:: _pid < 5 -> P(inDownSem);
		down--;
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