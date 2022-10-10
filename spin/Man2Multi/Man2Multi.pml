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
			:: down == 0 -> P(upSem);
			:: else -> skip;
		fi;
		temp = down;
		down = temp + 1;
		V(downSem);
		:: else -> P(upSem);
		if
			:: up == 0 -> P(downSem)
			:: else -> skip
		fi;
		temp = up;
		up = temp + 1;
		V(upSem);
	fi;

leave:
	if
		:: _pid < 5 -> temp = down;
		down = temp - 1;
		if 
			:: down == 0 -> V(upSem)
			:: else -> skip;
		fi;
		:: else -> temp = up;
		up = temp - 1;
		if
			:: up == 0 -> V(downSem)
			:: else -> skip
		fi;
	fi;
od;
}