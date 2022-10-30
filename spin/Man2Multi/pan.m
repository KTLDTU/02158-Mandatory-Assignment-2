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
	case 3: /* STATE 1 - Man2Safe.pml:92 - [(!(!(((cur_up>0)&&(cur_down>0)))))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][1] = 1;
		if (!( !( !(((now.cur_up>0)&&(now.cur_down>0))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: /* STATE 2 - Man2Safe.pml:92 - [assert(!(((cur_up>0)&&(cur_down>0))))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][2] = 1;
		spin_assert( !(((now.cur_up>0)&&(now.cur_down>0))), " !(((cur_up>0)&&(cur_down>0)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 5: /* STATE 3 - Man2Safe.pml:93 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][3] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Car */
	case 6: /* STATE 1 - Man2Safe.pml:22 - [((_pid==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][1] = 1;
		if (!((((int)((P0 *)this)->_pid)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: /* STATE 3 - Man2Safe.pml:23 - [((_pid>0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][3] = 1;
		if (!((((int)((P0 *)this)->_pid)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: /* STATE 5 - Man2Safe.pml:28 - [((_pid<5))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][5] = 1;
		if (!((((int)((P0 *)this)->_pid)<5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: /* STATE 7 - Man2Safe.pml:31 - [((inDownSem>0))] (28:0:1 - 1) */
		IfNotBlocked
		reached[0][7] = 1;
		if (!((now.inDownSem>0)))
			continue;
		/* merge: inDownSem = (inDownSem-1)(0, 8, 28) */
		reached[0][8] = 1;
		(trpt+1)->bup.oval = now.inDownSem;
		now.inDownSem = (now.inDownSem-1);
#ifdef VAR_RANGES
		logval("inDownSem", now.inDownSem);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 10: /* STATE 10 - Man2Safe.pml:33 - [((turn==-(1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][10] = 1;
		if (!((now.turn== -(1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: /* STATE 11 - Man2Safe.pml:33 - [((turnSem>0))] (22:0:1 - 1) */
		IfNotBlocked
		reached[0][11] = 1;
		if (!((now.turnSem>0)))
			continue;
		/* merge: turnSem = (turnSem-1)(0, 12, 22) */
		reached[0][12] = 1;
		(trpt+1)->bup.oval = now.turnSem;
		now.turnSem = (now.turnSem-1);
#ifdef VAR_RANGES
		logval("turnSem", now.turnSem);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 12: /* STATE 14 - Man2Safe.pml:35 - [((turn==-(1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][14] = 1;
		if (!((now.turn== -(1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: /* STATE 15 - Man2Safe.pml:35 - [turn = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][15] = 1;
		(trpt+1)->bup.oval = now.turn;
		now.turn = 0;
#ifdef VAR_RANGES
		logval("turn", now.turn);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: /* STATE 16 - Man2Safe.pml:35 - [turnSem = (turnSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][16] = 1;
		(trpt+1)->bup.oval = now.turnSem;
		now.turnSem = (now.turnSem+1);
#ifdef VAR_RANGES
		logval("turnSem", now.turnSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 15: /* STATE 20 - Man2Safe.pml:36 - [turnSem = (turnSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][20] = 1;
		(trpt+1)->bup.oval = now.turnSem;
		now.turnSem = (now.turnSem+1);
#ifdef VAR_RANGES
		logval("turnSem", now.turnSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: /* STATE 24 - Man2Safe.pml:38 - [((turn==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][24] = 1;
		if (!((now.turn==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 17: /* STATE 26 - Man2Safe.pml:39 - [((turn==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][26] = 1;
		if (!((now.turn==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 18: /* STATE 30 - Man2Safe.pml:41 - [inDownSem = (inDownSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][30] = 1;
		(trpt+1)->bup.oval = now.inDownSem;
		now.inDownSem = (now.inDownSem+1);
#ifdef VAR_RANGES
		logval("inDownSem", now.inDownSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: /* STATE 35 - Man2Safe.pml:44 - [down = (down+1)] (0:0:1 - 5) */
		IfNotBlocked
		reached[0][35] = 1;
		(trpt+1)->bup.oval = now.down;
		now.down = (now.down+1);
#ifdef VAR_RANGES
		logval("down", now.down);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: /* STATE 36 - Man2Safe.pml:45 - [inDownSem = (inDownSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][36] = 1;
		(trpt+1)->bup.oval = now.inDownSem;
		now.inDownSem = (now.inDownSem+1);
#ifdef VAR_RANGES
		logval("inDownSem", now.inDownSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 21: /* STATE 38 - Man2Safe.pml:46 - [cur_down = (cur_down+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][38] = 1;
		(trpt+1)->bup.oval = now.cur_down;
		now.cur_down = (now.cur_down+1);
#ifdef VAR_RANGES
		logval("cur_down", now.cur_down);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 22: /* STATE 41 - Man2Safe.pml:51 - [((inUpSem>0))] (62:0:1 - 1) */
		IfNotBlocked
		reached[0][41] = 1;
		if (!((now.inUpSem>0)))
			continue;
		/* merge: inUpSem = (inUpSem-1)(0, 42, 62) */
		reached[0][42] = 1;
		(trpt+1)->bup.oval = now.inUpSem;
		now.inUpSem = (now.inUpSem-1);
#ifdef VAR_RANGES
		logval("inUpSem", now.inUpSem);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 23: /* STATE 44 - Man2Safe.pml:53 - [((turn==-(1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][44] = 1;
		if (!((now.turn== -(1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 24: /* STATE 45 - Man2Safe.pml:53 - [((turnSem>0))] (56:0:1 - 1) */
		IfNotBlocked
		reached[0][45] = 1;
		if (!((now.turnSem>0)))
			continue;
		/* merge: turnSem = (turnSem-1)(0, 46, 56) */
		reached[0][46] = 1;
		(trpt+1)->bup.oval = now.turnSem;
		now.turnSem = (now.turnSem-1);
#ifdef VAR_RANGES
		logval("turnSem", now.turnSem);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 25: /* STATE 48 - Man2Safe.pml:55 - [((turn==-(1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][48] = 1;
		if (!((now.turn== -(1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 26: /* STATE 49 - Man2Safe.pml:55 - [turn = 1] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][49] = 1;
		(trpt+1)->bup.oval = now.turn;
		now.turn = 1;
#ifdef VAR_RANGES
		logval("turn", now.turn);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 27: /* STATE 50 - Man2Safe.pml:55 - [turnSem = (turnSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][50] = 1;
		(trpt+1)->bup.oval = now.turnSem;
		now.turnSem = (now.turnSem+1);
#ifdef VAR_RANGES
		logval("turnSem", now.turnSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 28: /* STATE 54 - Man2Safe.pml:56 - [turnSem = (turnSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][54] = 1;
		(trpt+1)->bup.oval = now.turnSem;
		now.turnSem = (now.turnSem+1);
#ifdef VAR_RANGES
		logval("turnSem", now.turnSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 29: /* STATE 58 - Man2Safe.pml:58 - [((turn==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][58] = 1;
		if (!((now.turn==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 30: /* STATE 60 - Man2Safe.pml:59 - [((turn==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][60] = 1;
		if (!((now.turn==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 31: /* STATE 64 - Man2Safe.pml:61 - [inUpSem = (inUpSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][64] = 1;
		(trpt+1)->bup.oval = now.inUpSem;
		now.inUpSem = (now.inUpSem+1);
#ifdef VAR_RANGES
		logval("inUpSem", now.inUpSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 32: /* STATE 69 - Man2Safe.pml:64 - [up = (up+1)] (0:0:1 - 5) */
		IfNotBlocked
		reached[0][69] = 1;
		(trpt+1)->bup.oval = now.up;
		now.up = (now.up+1);
#ifdef VAR_RANGES
		logval("up", now.up);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 33: /* STATE 70 - Man2Safe.pml:65 - [inUpSem = (inUpSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][70] = 1;
		(trpt+1)->bup.oval = now.inUpSem;
		now.inUpSem = (now.inUpSem+1);
#ifdef VAR_RANGES
		logval("inUpSem", now.inUpSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 34: /* STATE 72 - Man2Safe.pml:66 - [cur_up = (cur_up+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][72] = 1;
		(trpt+1)->bup.oval = now.cur_up;
		now.cur_up = (now.cur_up+1);
#ifdef VAR_RANGES
		logval("cur_up", now.cur_up);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 35: /* STATE 75 - Man2Safe.pml:71 - [((_pid<5))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][75] = 1;
		if (!((((int)((P0 *)this)->_pid)<5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 36: /* STATE 76 - Man2Safe.pml:71 - [cur_down = (cur_down-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][76] = 1;
		(trpt+1)->bup.oval = now.cur_down;
		now.cur_down = (now.cur_down-1);
#ifdef VAR_RANGES
		logval("cur_down", now.cur_down);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 37: /* STATE 77 - Man2Safe.pml:72 - [((inDownSem>0))] (80:0:1 - 1) */
		IfNotBlocked
		reached[0][77] = 1;
		if (!((now.inDownSem>0)))
			continue;
		/* merge: inDownSem = (inDownSem-1)(0, 78, 80) */
		reached[0][78] = 1;
		(trpt+1)->bup.oval = now.inDownSem;
		now.inDownSem = (now.inDownSem-1);
#ifdef VAR_RANGES
		logval("inDownSem", now.inDownSem);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 38: /* STATE 80 - Man2Safe.pml:73 - [down = (down-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][80] = 1;
		(trpt+1)->bup.oval = now.down;
		now.down = (now.down-1);
#ifdef VAR_RANGES
		logval("down", now.down);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 39: /* STATE 81 - Man2Safe.pml:75 - [((down==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][81] = 1;
		if (!((now.down==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 40: /* STATE 82 - Man2Safe.pml:75 - [turn = -(1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][82] = 1;
		(trpt+1)->bup.oval = now.turn;
		now.turn =  -(1);
#ifdef VAR_RANGES
		logval("turn", now.turn);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 41: /* STATE 87 - Man2Safe.pml:78 - [inDownSem = (inDownSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][87] = 1;
		(trpt+1)->bup.oval = now.inDownSem;
		now.inDownSem = (now.inDownSem+1);
#ifdef VAR_RANGES
		logval("inDownSem", now.inDownSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 42: /* STATE 90 - Man2Safe.pml:79 - [cur_up = (cur_up-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][90] = 1;
		(trpt+1)->bup.oval = now.cur_up;
		now.cur_up = (now.cur_up-1);
#ifdef VAR_RANGES
		logval("cur_up", now.cur_up);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 43: /* STATE 91 - Man2Safe.pml:80 - [((inUpSem>0))] (94:0:1 - 1) */
		IfNotBlocked
		reached[0][91] = 1;
		if (!((now.inUpSem>0)))
			continue;
		/* merge: inUpSem = (inUpSem-1)(0, 92, 94) */
		reached[0][92] = 1;
		(trpt+1)->bup.oval = now.inUpSem;
		now.inUpSem = (now.inUpSem-1);
#ifdef VAR_RANGES
		logval("inUpSem", now.inUpSem);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 44: /* STATE 94 - Man2Safe.pml:81 - [up = (up-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][94] = 1;
		(trpt+1)->bup.oval = now.up;
		now.up = (now.up-1);
#ifdef VAR_RANGES
		logval("up", now.up);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 45: /* STATE 95 - Man2Safe.pml:83 - [((up==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][95] = 1;
		if (!((now.up==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 46: /* STATE 96 - Man2Safe.pml:83 - [turn = -(1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][96] = 1;
		(trpt+1)->bup.oval = now.turn;
		now.turn =  -(1);
#ifdef VAR_RANGES
		logval("turn", now.turn);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 47: /* STATE 101 - Man2Safe.pml:86 - [inUpSem = (inUpSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][101] = 1;
		(trpt+1)->bup.oval = now.inUpSem;
		now.inUpSem = (now.inUpSem+1);
#ifdef VAR_RANGES
		logval("inUpSem", now.inUpSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 48: /* STATE 108 - Man2Safe.pml:89 - [-end-] (0:0:0 - 3) */
		IfNotBlocked
		reached[0][108] = 1;
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

