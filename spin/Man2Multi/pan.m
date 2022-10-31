#define rand	pan_rand
#if defined(HAS_CODE) && defined(VERBOSE)
	cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* PROC Check */
	case 3: /* STATE 1 - Man2Safe.pml:88 - [(!(!(((cur_up>0)&&(cur_down>0)))))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][1] = 1;
		if (!( !( !(((now.cur_up>0)&&(now.cur_down>0))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: /* STATE 2 - Man2Safe.pml:88 - [assert(!(((cur_up>0)&&(cur_down>0))))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][2] = 1;
		spin_assert( !(((now.cur_up>0)&&(now.cur_down>0))), " !(((cur_up>0)&&(cur_down>0)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 5: /* STATE 3 - Man2Safe.pml:89 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][3] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Car */
	case 6: /* STATE 1 - Man2Safe.pml:26 - [((_pid==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][1] = 1;
		if (!((((int)((P0 *)this)->_pid)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: /* STATE 3 - Man2Safe.pml:27 - [((_pid>0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][3] = 1;
		if (!((((int)((P0 *)this)->_pid)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: /* STATE 5 - Man2Safe.pml:31 - [((_pid<5))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][5] = 1;
		if (!((((int)((P0 *)this)->_pid)<5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: /* STATE 6 - Man2Safe.pml:32 - [((inDownSem>0))] (16:0:1 - 1) */
		IfNotBlocked
		reached[0][6] = 1;
		if (!((now.inDownSem>0)))
			continue;
		/* merge: inDownSem = (inDownSem-1)(0, 7, 16) */
		reached[0][7] = 1;
		(trpt+1)->bup.oval = now.inDownSem;
		now.inDownSem = (now.inDownSem-1);
#ifdef VAR_RANGES
		logval("inDownSem", now.inDownSem);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 10: /* STATE 9 - Man2Safe.pml:35 - [((turn!=0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][9] = 1;
		if (!((now.turn!=0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: /* STATE 10 - Man2Safe.pml:35 - [((turnSem>0))] (13:0:1 - 1) */
		IfNotBlocked
		reached[0][10] = 1;
		if (!((now.turnSem>0)))
			continue;
		/* merge: turnSem = (turnSem-1)(0, 11, 13) */
		reached[0][11] = 1;
		(trpt+1)->bup.oval = now.turnSem;
		now.turnSem = (now.turnSem-1);
#ifdef VAR_RANGES
		logval("turnSem", now.turnSem);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 12: /* STATE 13 - Man2Safe.pml:35 - [turn = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][13] = 1;
		(trpt+1)->bup.oval = now.turn;
		now.turn = 0;
#ifdef VAR_RANGES
		logval("turn", now.turn);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 13: /* STATE 18 - Man2Safe.pml:39 - [temp_down = down] (0:0:1 - 3) */
		IfNotBlocked
		reached[0][18] = 1;
		(trpt+1)->bup.oval = now.temp_down;
		now.temp_down = now.down;
#ifdef VAR_RANGES
		logval("temp_down", now.temp_down);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: /* STATE 19 - Man2Safe.pml:40 - [down = (temp_down+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][19] = 1;
		(trpt+1)->bup.oval = now.down;
		now.down = (now.temp_down+1);
#ifdef VAR_RANGES
		logval("down", now.down);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 15: /* STATE 20 - Man2Safe.pml:41 - [inDownSem = (inDownSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][20] = 1;
		(trpt+1)->bup.oval = now.inDownSem;
		now.inDownSem = (now.inDownSem+1);
#ifdef VAR_RANGES
		logval("inDownSem", now.inDownSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: /* STATE 22 - Man2Safe.pml:42 - [cur_down = (cur_down+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][22] = 1;
		(trpt+1)->bup.oval = now.cur_down;
		now.cur_down = (now.cur_down+1);
#ifdef VAR_RANGES
		logval("cur_down", now.cur_down);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: /* STATE 24 - Man2Safe.pml:45 - [((inUpSem>0))] (34:0:1 - 1) */
		IfNotBlocked
		reached[0][24] = 1;
		if (!((now.inUpSem>0)))
			continue;
		/* merge: inUpSem = (inUpSem-1)(0, 25, 34) */
		reached[0][25] = 1;
		(trpt+1)->bup.oval = now.inUpSem;
		now.inUpSem = (now.inUpSem-1);
#ifdef VAR_RANGES
		logval("inUpSem", now.inUpSem);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 18: /* STATE 27 - Man2Safe.pml:48 - [((turn!=1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][27] = 1;
		if (!((now.turn!=1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 19: /* STATE 28 - Man2Safe.pml:48 - [((turnSem>0))] (31:0:1 - 1) */
		IfNotBlocked
		reached[0][28] = 1;
		if (!((now.turnSem>0)))
			continue;
		/* merge: turnSem = (turnSem-1)(0, 29, 31) */
		reached[0][29] = 1;
		(trpt+1)->bup.oval = now.turnSem;
		now.turnSem = (now.turnSem-1);
#ifdef VAR_RANGES
		logval("turnSem", now.turnSem);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 20: /* STATE 31 - Man2Safe.pml:48 - [turn = 1] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][31] = 1;
		(trpt+1)->bup.oval = now.turn;
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", now.turn);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 21: /* STATE 36 - Man2Safe.pml:52 - [temp_up = up] (0:0:1 - 3) */
		IfNotBlocked
		reached[0][36] = 1;
		(trpt+1)->bup.oval = now.temp_up;
		now.temp_up = now.up;
#ifdef VAR_RANGES
		logval("temp_up", now.temp_up);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 22: /* STATE 37 - Man2Safe.pml:53 - [up = (temp_up+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][37] = 1;
		(trpt+1)->bup.oval = now.up;
		now.up = (now.temp_up+1);
#ifdef VAR_RANGES
		logval("up", now.up);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 23: /* STATE 38 - Man2Safe.pml:54 - [inUpSem = (inUpSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][38] = 1;
		(trpt+1)->bup.oval = now.inUpSem;
		now.inUpSem = (now.inUpSem+1);
#ifdef VAR_RANGES
		logval("inUpSem", now.inUpSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 24: /* STATE 40 - Man2Safe.pml:55 - [cur_up = (cur_up+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][40] = 1;
		(trpt+1)->bup.oval = now.cur_up;
		now.cur_up = (now.cur_up+1);
#ifdef VAR_RANGES
		logval("cur_up", now.cur_up);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 25: /* STATE 43 - Man2Safe.pml:60 - [((_pid<5))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][43] = 1;
		if (!((((int)((P0 *)this)->_pid)<5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 26: /* STATE 44 - Man2Safe.pml:60 - [cur_down = (cur_down-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][44] = 1;
		(trpt+1)->bup.oval = now.cur_down;
		now.cur_down = (now.cur_down-1);
#ifdef VAR_RANGES
		logval("cur_down", now.cur_down);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 27: /* STATE 45 - Man2Safe.pml:61 - [((inDownSem>0))] (48:0:1 - 1) */
		IfNotBlocked
		reached[0][45] = 1;
		if (!((now.inDownSem>0)))
			continue;
		/* merge: inDownSem = (inDownSem-1)(0, 46, 48) */
		reached[0][46] = 1;
		(trpt+1)->bup.oval = now.inDownSem;
		now.inDownSem = (now.inDownSem-1);
#ifdef VAR_RANGES
		logval("inDownSem", now.inDownSem);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 28: /* STATE 48 - Man2Safe.pml:62 - [temp_down = down] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][48] = 1;
		(trpt+1)->bup.oval = now.temp_down;
		now.temp_down = now.down;
#ifdef VAR_RANGES
		logval("temp_down", now.temp_down);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 29: /* STATE 49 - Man2Safe.pml:63 - [down = (temp_down-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][49] = 1;
		(trpt+1)->bup.oval = now.down;
		now.down = (now.temp_down-1);
#ifdef VAR_RANGES
		logval("down", now.down);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 30: /* STATE 50 - Man2Safe.pml:66 - [((down==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][50] = 1;
		if (!((now.down==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 31: /* STATE 51 - Man2Safe.pml:66 - [turn = -(1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][51] = 1;
		(trpt+1)->bup.oval = now.turn;
		now.turn =  -(1);
#ifdef VAR_RANGES
		logval("turn", now.turn);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 32: /* STATE 52 - Man2Safe.pml:66 - [turnSem = (turnSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][52] = 1;
		(trpt+1)->bup.oval = now.turnSem;
		now.turnSem = (now.turnSem+1);
#ifdef VAR_RANGES
		logval("turnSem", now.turnSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 33: /* STATE 58 - Man2Safe.pml:70 - [inDownSem = (inDownSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][58] = 1;
		(trpt+1)->bup.oval = now.inDownSem;
		now.inDownSem = (now.inDownSem+1);
#ifdef VAR_RANGES
		logval("inDownSem", now.inDownSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 34: /* STATE 61 - Man2Safe.pml:72 - [cur_up = (cur_up-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][61] = 1;
		(trpt+1)->bup.oval = now.cur_up;
		now.cur_up = (now.cur_up-1);
#ifdef VAR_RANGES
		logval("cur_up", now.cur_up);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 35: /* STATE 62 - Man2Safe.pml:73 - [((inUpSem>0))] (65:0:1 - 1) */
		IfNotBlocked
		reached[0][62] = 1;
		if (!((now.inUpSem>0)))
			continue;
		/* merge: inUpSem = (inUpSem-1)(0, 63, 65) */
		reached[0][63] = 1;
		(trpt+1)->bup.oval = now.inUpSem;
		now.inUpSem = (now.inUpSem-1);
#ifdef VAR_RANGES
		logval("inUpSem", now.inUpSem);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 36: /* STATE 65 - Man2Safe.pml:74 - [temp_up = up] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][65] = 1;
		(trpt+1)->bup.oval = now.temp_up;
		now.temp_up = now.up;
#ifdef VAR_RANGES
		logval("temp_up", now.temp_up);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 37: /* STATE 66 - Man2Safe.pml:75 - [up = (temp_up-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][66] = 1;
		(trpt+1)->bup.oval = now.up;
		now.up = (now.temp_up-1);
#ifdef VAR_RANGES
		logval("up", now.up);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 38: /* STATE 67 - Man2Safe.pml:78 - [((up==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][67] = 1;
		if (!((now.up==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 39: /* STATE 68 - Man2Safe.pml:78 - [turn = -(1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][68] = 1;
		(trpt+1)->bup.oval = now.turn;
		now.turn =  -(1);
#ifdef VAR_RANGES
		logval("turn", now.turn);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 40: /* STATE 69 - Man2Safe.pml:78 - [turnSem = (turnSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][69] = 1;
		(trpt+1)->bup.oval = now.turnSem;
		now.turnSem = (now.turnSem+1);
#ifdef VAR_RANGES
		logval("turnSem", now.turnSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 41: /* STATE 75 - Man2Safe.pml:82 - [inUpSem = (inUpSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][75] = 1;
		(trpt+1)->bup.oval = now.inUpSem;
		now.inUpSem = (now.inUpSem+1);
#ifdef VAR_RANGES
		logval("inUpSem", now.inUpSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 42: /* STATE 82 - Man2Safe.pml:85 - [-end-] (0:0:0 - 3) */
		IfNotBlocked
		reached[0][82] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

