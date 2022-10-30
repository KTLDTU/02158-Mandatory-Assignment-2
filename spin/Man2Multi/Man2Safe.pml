#define N 9
#define P(s) atomic{s > 0 -> s--}
#define V(s) atomic{s++}
#define INV (!(cur_up > 0 && cur_down > 0))

int up = 0;
int down = 0;

int inDownSem = 1;
int inUpSem = 1;

int turnSem = 1;
int turn = -1;

// history variables
int cur_up = 0;
int cur_down = 0;

// temp variables for increment and decrement
int temp_down;
int temp_up;

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
			P(turnSem);
			if
				:: turn == -1 -> turn = 0; V(turnSem); break
				:: turn == 0 -> V(turnSem); break
				:: turn == 1 -> V(turnSem)
			fi;
			V(inDownSem)
		od;

		temp_down = down;
		down = temp_down + 1;
		V(inDownSem);
		cur_down++;

		:: else ->

		do
			:: true -> P(inUpSem);
			P(turnSem);
			if
				:: turn == -1 -> turn = 1; V(turnSem); break
				:: turn == 0 -> V(turnSem)
				:: turn == 1 -> V(turnSem); break
			fi;
			V(inUpSem);
		od;

		temp_up = up;
		up = temp_up + 1;
		V(inUpSem);
		cur_up++;
	fi;

leave:
	if
		:: _pid < 5 -> cur_down--;
		P(inDownSem);
		temp_down = down;
		down = temp_down - 1;
		
		if 
			:: down == 0 -> turn = -1
			:: else -> skip;
		fi;
		
		V(inDownSem)
		
		:: else -> cur_up--;
		P(inUpSem);
		temp_up = up;
		up = temp_up - 1;
		
		if
			:: up == 0 -> turn = -1
			:: else -> skip
		fi;
		
		V(inUpSem)
	fi;
od;
}

active proctype Check() {
	!INV -> assert(INV)
}
