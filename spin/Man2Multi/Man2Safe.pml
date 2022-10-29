#define N 9
#define P(s) atomic{s > 0 -> s--}
#define V(s) atomic{s++}
int upSem = 1;
int downSem = 1;

int up = 0;
int down = 0;

int inDownSem = 1;
int inUpSem = 1;

int turnSem = 1;
int turn = -1;

/* Alley safety property: !(up > 0 && down > 0) */

active [N] proctype Car() {
	int temp;
do
	:: _pid == 0 -> break;
	:: _pid > 0 -> skip;

enter:

	if
		:: _pid < 5 ->

		do
			:: true -> P(inDownSem);
			if
				:: turn == -1 -> P(turnSem);
				if
					:: turn == -1 -> turn = 0; V(turnSem); break
					:: else -> V(turnSem);
				fi
				:: turn == 0 -> break
				:: turn == 1 -> skip
			fi;
			V(inDownSem);
		od;

		down++;
		V(inDownSem);

		:: else ->

		do
			:: true -> P(inUpSem);
			if
				:: turn == -1 -> P(turnSem);
				if
					:: turn == -1 -> turn = 1; V(turnSem); break
					:: else -> V(turnSem)
				fi
				:: turn == 0 -> skip
				:: turn == 1 -> break
			fi;
			V(inUpSem);
		od;

		up++;
		V(inUpSem);
	fi;

leave:
	if
		:: _pid < 5 -> P(inDownSem);
		down--;
		if 
			:: down == 0 -> turn = -1
			:: else -> skip;
		fi; 
		V(inDownSem);
		:: else ->  P(inUpSem);
		up--;
		if
			:: up == 0 -> turn = -1
			:: else -> skip
		fi;
		V(inUpSem);
	fi;
od;
}

// TODO: make dis ltl formula
// ltl alleyStafety { [] (!(up > 0 && down > 0)) }