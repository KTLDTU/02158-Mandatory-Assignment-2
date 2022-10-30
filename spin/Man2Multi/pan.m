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
	case 3: /* STATE 1 - Man2Safe.pml:99 - [(!(!(((cur_up>0)&&(cur_down>0)))))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][1] = 1;
		if (!( !( !(((now.cur_up>0)&&(now.cur_down>0))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: /* STATE 2 - Man2Safe.pml:99 - [assert(!(((cur_up>0)&&(cur_down>0))))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][2] = 1;
		spin_assert( !(((now.cur_up>0)&&(now.cur_down>0))), " !(((cur_up>0)&&(cur_down>0)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 5: /* STATE 3 - Man2Safe.pml:100 - [-end-] (0:0:0 - 1) */
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
	case 8: /* STATE 5 - Man2Safe.pml:32 - [((_pid<5))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][5] = 1;
		if (!((((int)((P0 *)this)->_pid)<5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: /* STATE 7 - Man2Safe.pml:35 - [((inDownSem>0))] (12:0:1 - 1) */
		IfNotBlocked
		reached[0][7] = 1;
		if (!((now.inDownSem>0)))
			continue;
		/* merge: inDownSem = (inDownSem-1)(0, 8, 12) */
		reached[0][8] = 1;
		(trpt+1)->bup.oval = now.inDownSem;
		now.inDownSem = (now.inDownSem-1);
#ifdef VAR_RANGES
		logval("inDownSem", now.inDownSem);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 10: /* STATE 10 - Man2Safe.pml:36 - [((turnSem>0))] (25:0:1 - 1) */
		IfNotBlocked
		reached[0][10] = 1;
		if (!((now.turnSem>0)))
			continue;
		/* merge: turnSem = (turnSem-1)(0, 11, 25) */
		reached[0][11] = 1;
		(trpt+1)->bup.oval = now.turnSem;
		now.turnSem = (now.turnSem-1);
#ifdef VAR_RANGES
		logval("turnSem", now.turnSem);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 11: /* STATE 13 - Man2Safe.pml:38 - [((turn==-(1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][13] = 1;
		if (!((now.turn== -(1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: /* STATE 14 - Man2Safe.pml:38 - [turn = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][14] = 1;
		(trpt+1)->bup.oval = now.turn;
		now.turn = 0;
#ifdef VAR_RANGES
		logval("turn", now.turn);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 13: /* STATE 15 - Man2Safe.pml:38 - [turnSem = (turnSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][15] = 1;
		(trpt+1)->bup.oval = now.turnSem;
		now.turnSem = (now.turnSem+1);
#ifdef VAR_RANGES
		logval("turnSem", now.turnSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: /* STATE 18 - Man2Safe.pml:39 - [((turn==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][18] = 1;
		if (!((now.turn==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 15: /* STATE 19 - Man2Safe.pml:39 - [turnSem = (turnSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][19] = 1;
		(trpt+1)->bup.oval = now.turnSem;
		now.turnSem = (now.turnSem+1);
#ifdef VAR_RANGES
		logval("turnSem", now.turnSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: /* STATE 22 - Man2Safe.pml:40 - [((turn==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][22] = 1;
		if (!((now.turn==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 17: /* STATE 23 - Man2Safe.pml:40 - [turnSem = (turnSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][23] = 1;
		(trpt+1)->bup.oval = now.turnSem;
		now.turnSem = (now.turnSem+1);
#ifdef VAR_RANGES
		logval("turnSem", now.turnSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 18: /* STATE 27 - Man2Safe.pml:42 - [inDownSem = (inDownSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][27] = 1;
		(trpt+1)->bup.oval = now.inDownSem;
		now.inDownSem = (now.inDownSem+1);
#ifdef VAR_RANGES
		logval("inDownSem", now.inDownSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: /* STATE 32 - Man2Safe.pml:45 - [temp_down = down] (0:0:1 - 5) */
		IfNotBlocked
		reached[0][32] = 1;
		(trpt+1)->bup.oval = now.temp_down;
		now.temp_down = now.down;
#ifdef VAR_RANGES
		logval("temp_down", now.temp_down);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: /* STATE 33 - Man2Safe.pml:46 - [down = (temp_down+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][33] = 1;
		(trpt+1)->bup.oval = now.down;
		now.down = (now.temp_down+1);
#ifdef VAR_RANGES
		logval("down", now.down);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 21: /* STATE 34 - Man2Safe.pml:47 - [inDownSem = (inDownSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][34] = 1;
		(trpt+1)->bup.oval = now.inDownSem;
		now.inDownSem = (now.inDownSem+1);
#ifdef VAR_RANGES
		logval("inDownSem", now.inDownSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 22: /* STATE 36 - Man2Safe.pml:48 - [cur_down = (cur_down+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][36] = 1;
		(trpt+1)->bup.oval = now.cur_down;
		now.cur_down = (now.cur_down+1);
#ifdef VAR_RANGES
		logval("cur_down", now.cur_down);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 23: /* STATE 39 - Man2Safe.pml:53 - [((inUpSem>0))] (44:0:1 - 1) */
		IfNotBlocked
		reached[0][39] = 1;
		if (!((now.inUpSem>0)))
			continue;
		/* merge: inUpSem = (inUpSem-1)(0, 40, 44) */
		reached[0][40] = 1;
		(trpt+1)->bup.oval = now.inUpSem;
		now.inUpSem = (now.inUpSem-1);
#ifdef VAR_RANGES
		logval("inUpSem", now.inUpSem);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 24: /* STATE 42 - Man2Safe.pml:54 - [((turnSem>0))] (57:0:1 - 1) */
		IfNotBlocked
		reached[0][42] = 1;
		if (!((now.turnSem>0)))
			continue;
		/* merge: turnSem = (turnSem-1)(0, 43, 57) */
		reached[0][43] = 1;
		(trpt+1)->bup.oval = now.turnSem;
		now.turnSem = (now.turnSem-1);
#ifdef VAR_RANGES
		logval("turnSem", now.turnSem);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 25: /* STATE 45 - Man2Safe.pml:56 - [((turn==-(1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][45] = 1;
		if (!((now.turn== -(1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 26: /* STATE 46 - Man2Safe.pml:56 - [turn = 1] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][46] = 1;
		(trpt+1)->bup.oval = now.turn;
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", now.turn);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 27: /* STATE 47 - Man2Safe.pml:56 - [turnSem = (turnSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][47] = 1;
		(trpt+1)->bup.oval = now.turnSem;
		now.turnSem = (now.turnSem+1);
#ifdef VAR_RANGES
		logval("turnSem", now.turnSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 28: /* STATE 50 - Man2Safe.pml:57 - [((turn==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][50] = 1;
		if (!((now.turn==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 29: /* STATE 51 - Man2Safe.pml:57 - [turnSem = (turnSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][51] = 1;
		(trpt+1)->bup.oval = now.turnSem;
		now.turnSem = (now.turnSem+1);
#ifdef VAR_RANGES
		logval("turnSem", now.turnSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 30: /* STATE 53 - Man2Safe.pml:58 - [((turn==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][53] = 1;
		if (!((now.turn==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 31: /* STATE 54 - Man2Safe.pml:58 - [turnSem = (turnSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][54] = 1;
		(trpt+1)->bup.oval = now.turnSem;
		now.turnSem = (now.turnSem+1);
#ifdef VAR_RANGES
		logval("turnSem", now.turnSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 32: /* STATE 59 - Man2Safe.pml:60 - [inUpSem = (inUpSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][59] = 1;
		(trpt+1)->bup.oval = now.inUpSem;
		now.inUpSem = (now.inUpSem+1);
#ifdef VAR_RANGES
		logval("inUpSem", now.inUpSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 33: /* STATE 64 - Man2Safe.pml:63 - [temp_up = up] (0:0:1 - 5) */
		IfNotBlocked
		reached[0][64] = 1;
		(trpt+1)->bup.oval = now.temp_up;
		now.temp_up = now.up;
#ifdef VAR_RANGES
		logval("temp_up", now.temp_up);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 34: /* STATE 65 - Man2Safe.pml:64 - [up = (temp_up+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][65] = 1;
		(trpt+1)->bup.oval = now.up;
		now.up = (now.temp_up+1);
#ifdef VAR_RANGES
		logval("up", now.up);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 35: /* STATE 66 - Man2Safe.pml:65 - [inUpSem = (inUpSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][66] = 1;
		(trpt+1)->bup.oval = now.inUpSem;
		now.inUpSem = (now.inUpSem+1);
#ifdef VAR_RANGES
		logval("inUpSem", now.inUpSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 36: /* STATE 68 - Man2Safe.pml:66 - [cur_up = (cur_up+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][68] = 1;
		(trpt+1)->bup.oval = now.cur_up;
		now.cur_up = (now.cur_up+1);
#ifdef VAR_RANGES
		logval("cur_up", now.cur_up);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 37: /* STATE 71 - Man2Safe.pml:71 - [((_pid<5))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][71] = 1;
		if (!((((int)((P0 *)this)->_pid)<5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 38: /* STATE 72 - Man2Safe.pml:71 - [cur_down = (cur_down-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][72] = 1;
		(trpt+1)->bup.oval = now.cur_down;
		now.cur_down = (now.cur_down-1);
#ifdef VAR_RANGES
		logval("cur_down", now.cur_down);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 39: /* STATE 73 - Man2Safe.pml:72 - [((inDownSem>0))] (76:0:1 - 1) */
		IfNotBlocked
		reached[0][73] = 1;
		if (!((now.inDownSem>0)))
			continue;
		/* merge: inDownSem = (inDownSem-1)(0, 74, 76) */
		reached[0][74] = 1;
		(trpt+1)->bup.oval = now.inDownSem;
		now.inDownSem = (now.inDownSem-1);
#ifdef VAR_RANGES
		logval("inDownSem", now.inDownSem);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 40: /* STATE 76 - Man2Safe.pml:73 - [temp_down = down] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][76] = 1;
		(trpt+1)->bup.oval = now.temp_down;
		now.temp_down = now.down;
#ifdef VAR_RANGES
		logval("temp_down", now.temp_down);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 41: /* STATE 77 - Man2Safe.pml:74 - [down = (temp_down-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][77] = 1;
		(trpt+1)->bup.oval = now.down;
		now.down = (now.temp_down-1);
#ifdef VAR_RANGES
		logval("down", now.down);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 42: /* STATE 78 - Man2Safe.pml:77 - [((down==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][78] = 1;
		if (!((now.down==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 43: /* STATE 79 - Man2Safe.pml:77 - [turn = -(1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][79] = 1;
		(trpt+1)->bup.oval = now.turn;
		now.turn =  -(1);
#ifdef VAR_RANGES
		logval("turn", now.turn);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 44: /* STATE 84 - Man2Safe.pml:81 - [inDownSem = (inDownSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][84] = 1;
		(trpt+1)->bup.oval = now.inDownSem;
		now.inDownSem = (now.inDownSem+1);
#ifdef VAR_RANGES
		logval("inDownSem", now.inDownSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 45: /* STATE 87 - Man2Safe.pml:83 - [cur_up = (cur_up-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][87] = 1;
		(trpt+1)->bup.oval = now.cur_up;
		now.cur_up = (now.cur_up-1);
#ifdef VAR_RANGES
		logval("cur_up", now.cur_up);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 46: /* STATE 88 - Man2Safe.pml:84 - [((inUpSem>0))] (91:0:1 - 1) */
		IfNotBlocked
		reached[0][88] = 1;
		if (!((now.inUpSem>0)))
			continue;
		/* merge: inUpSem = (inUpSem-1)(0, 89, 91) */
		reached[0][89] = 1;
		(trpt+1)->bup.oval = now.inUpSem;
		now.inUpSem = (now.inUpSem-1);
#ifdef VAR_RANGES
		logval("inUpSem", now.inUpSem);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 47: /* STATE 91 - Man2Safe.pml:85 - [temp_up = up] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][91] = 1;
		(trpt+1)->bup.oval = now.temp_up;
		now.temp_up = now.up;
#ifdef VAR_RANGES
		logval("temp_up", now.temp_up);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 48: /* STATE 92 - Man2Safe.pml:86 - [up = (temp_up-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][92] = 1;
		(trpt+1)->bup.oval = now.up;
		now.up = (now.temp_up-1);
#ifdef VAR_RANGES
		logval("up", now.up);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 49: /* STATE 93 - Man2Safe.pml:89 - [((up==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][93] = 1;
		if (!((now.up==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 50: /* STATE 94 - Man2Safe.pml:89 - [turn = -(1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][94] = 1;
		(trpt+1)->bup.oval = now.turn;
		now.turn =  -(1);
#ifdef VAR_RANGES
		logval("turn", now.turn);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 51: /* STATE 99 - Man2Safe.pml:93 - [inUpSem = (inUpSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][99] = 1;
		(trpt+1)->bup.oval = now.inUpSem;
		now.inUpSem = (now.inUpSem+1);
#ifdef VAR_RANGES
		logval("inUpSem", now.inUpSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 52: /* STATE 106 - Man2Safe.pml:96 - [-end-] (0:0:0 - 3) */
		IfNotBlocked
		reached[0][106] = 1;
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

