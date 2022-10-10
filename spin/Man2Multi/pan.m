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

		 /* PROC Car */
	case 3: /* STATE 1 - Man2Safe.pml:20 - [((_pid==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][1] = 1;
		if (!((((int)((P0 *)this)->_pid)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: /* STATE 2 - Man2Safe.pml:20 - [assert(!(((up>0)&&(down>0))))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][2] = 1;
		spin_assert( !(((now.up>0)&&(now.down>0))), " !(((up>0)&&(down>0)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 5: /* STATE 3 - Man2Safe.pml:21 - [((_pid>0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][3] = 1;
		if (!((((int)((P0 *)this)->_pid)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: /* STATE 5 - Man2Safe.pml:25 - [((_pid<5))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][5] = 1;
		if (!((((int)((P0 *)this)->_pid)<5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: /* STATE 6 - Man2Safe.pml:25 - [((downSem>0))] (11:0:1 - 1) */
		IfNotBlocked
		reached[0][6] = 1;
		if (!((now.downSem>0)))
			continue;
		/* merge: downSem = (downSem-1)(0, 7, 11) */
		reached[0][7] = 1;
		(trpt+1)->bup.oval = now.downSem;
		now.downSem = (now.downSem-1);
#ifdef VAR_RANGES
		logval("downSem", now.downSem);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 8: /* STATE 9 - Man2Safe.pml:26 - [((inDownSem>0))] (20:0:1 - 1) */
		IfNotBlocked
		reached[0][9] = 1;
		if (!((now.inDownSem>0)))
			continue;
		/* merge: inDownSem = (inDownSem-1)(0, 10, 20) */
		reached[0][10] = 1;
		(trpt+1)->bup.oval = now.inDownSem;
		now.inDownSem = (now.inDownSem-1);
#ifdef VAR_RANGES
		logval("inDownSem", now.inDownSem);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 9: /* STATE 12 - Man2Safe.pml:28 - [((down==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][12] = 1;
		if (!((now.down==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: /* STATE 13 - Man2Safe.pml:28 - [((upSem>0))] (16:0:1 - 1) */
		IfNotBlocked
		reached[0][13] = 1;
		if (!((now.upSem>0)))
			continue;
		/* merge: upSem = (upSem-1)(0, 14, 16) */
		reached[0][14] = 1;
		(trpt+1)->bup.oval = now.upSem;
		now.upSem = (now.upSem-1);
#ifdef VAR_RANGES
		logval("upSem", now.upSem);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 11: /* STATE 16 - Man2Safe.pml:28 - [down = (down+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][16] = 1;
		(trpt+1)->bup.oval = now.down;
		now.down = (now.down+1);
#ifdef VAR_RANGES
		logval("down", now.down);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 12: /* STATE 18 - Man2Safe.pml:29 - [down = (down+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][18] = 1;
		(trpt+1)->bup.oval = now.down;
		now.down = (now.down+1);
#ifdef VAR_RANGES
		logval("down", now.down);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 13: /* STATE 22 - Man2Safe.pml:31 - [inDownSem = (inDownSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][22] = 1;
		(trpt+1)->bup.oval = now.inDownSem;
		now.inDownSem = (now.inDownSem+1);
#ifdef VAR_RANGES
		logval("inDownSem", now.inDownSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: /* STATE 24 - Man2Safe.pml:33 - [downSem = (downSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][24] = 1;
		(trpt+1)->bup.oval = now.downSem;
		now.downSem = (now.downSem+1);
#ifdef VAR_RANGES
		logval("downSem", now.downSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 15: /* STATE 27 - Man2Safe.pml:34 - [((upSem>0))] (32:0:1 - 1) */
		IfNotBlocked
		reached[0][27] = 1;
		if (!((now.upSem>0)))
			continue;
		/* merge: upSem = (upSem-1)(0, 28, 32) */
		reached[0][28] = 1;
		(trpt+1)->bup.oval = now.upSem;
		now.upSem = (now.upSem-1);
#ifdef VAR_RANGES
		logval("upSem", now.upSem);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 16: /* STATE 30 - Man2Safe.pml:35 - [((inUpSem>0))] (41:0:1 - 1) */
		IfNotBlocked
		reached[0][30] = 1;
		if (!((now.inUpSem>0)))
			continue;
		/* merge: inUpSem = (inUpSem-1)(0, 31, 41) */
		reached[0][31] = 1;
		(trpt+1)->bup.oval = now.inUpSem;
		now.inUpSem = (now.inUpSem-1);
#ifdef VAR_RANGES
		logval("inUpSem", now.inUpSem);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 17: /* STATE 33 - Man2Safe.pml:37 - [((up==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][33] = 1;
		if (!((now.up==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 18: /* STATE 34 - Man2Safe.pml:37 - [((downSem>0))] (37:0:1 - 1) */
		IfNotBlocked
		reached[0][34] = 1;
		if (!((now.downSem>0)))
			continue;
		/* merge: downSem = (downSem-1)(0, 35, 37) */
		reached[0][35] = 1;
		(trpt+1)->bup.oval = now.downSem;
		now.downSem = (now.downSem-1);
#ifdef VAR_RANGES
		logval("downSem", now.downSem);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 19: /* STATE 37 - Man2Safe.pml:37 - [up = (up+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][37] = 1;
		(trpt+1)->bup.oval = now.up;
		now.up = (now.up+1);
#ifdef VAR_RANGES
		logval("up", now.up);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: /* STATE 39 - Man2Safe.pml:38 - [up = (up+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][39] = 1;
		(trpt+1)->bup.oval = now.up;
		now.up = (now.up+1);
#ifdef VAR_RANGES
		logval("up", now.up);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 21: /* STATE 43 - Man2Safe.pml:40 - [inUpSem = (inUpSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][43] = 1;
		(trpt+1)->bup.oval = now.inUpSem;
		now.inUpSem = (now.inUpSem+1);
#ifdef VAR_RANGES
		logval("inUpSem", now.inUpSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 22: /* STATE 45 - Man2Safe.pml:42 - [upSem = (upSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][45] = 1;
		(trpt+1)->bup.oval = now.upSem;
		now.upSem = (now.upSem+1);
#ifdef VAR_RANGES
		logval("upSem", now.upSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 23: /* STATE 49 - Man2Safe.pml:47 - [((_pid<5))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][49] = 1;
		if (!((((int)((P0 *)this)->_pid)<5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 24: /* STATE 50 - Man2Safe.pml:47 - [((inDownSem>0))] (58:0:1 - 1) */
		IfNotBlocked
		reached[0][50] = 1;
		if (!((now.inDownSem>0)))
			continue;
		/* merge: inDownSem = (inDownSem-1)(0, 51, 58) */
		reached[0][51] = 1;
		(trpt+1)->bup.oval = now.inDownSem;
		now.inDownSem = (now.inDownSem-1);
#ifdef VAR_RANGES
		logval("inDownSem", now.inDownSem);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 25: /* STATE 53 - Man2Safe.pml:49 - [((down==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][53] = 1;
		if (!((now.down==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 26: /* STATE 54 - Man2Safe.pml:49 - [upSem = (upSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][54] = 1;
		(trpt+1)->bup.oval = now.upSem;
		now.upSem = (now.upSem+1);
#ifdef VAR_RANGES
		logval("upSem", now.upSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 27: /* STATE 60 - Man2Safe.pml:52 - [inDownSem = (inDownSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][60] = 1;
		(trpt+1)->bup.oval = now.inDownSem;
		now.inDownSem = (now.inDownSem+1);
#ifdef VAR_RANGES
		logval("inDownSem", now.inDownSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 28: /* STATE 63 - Man2Safe.pml:53 - [((inUpSem>0))] (66:0:1 - 1) */
		IfNotBlocked
		reached[0][63] = 1;
		if (!((now.inUpSem>0)))
			continue;
		/* merge: inUpSem = (inUpSem-1)(0, 64, 66) */
		reached[0][64] = 1;
		(trpt+1)->bup.oval = now.inUpSem;
		now.inUpSem = (now.inUpSem-1);
#ifdef VAR_RANGES
		logval("inUpSem", now.inUpSem);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 29: /* STATE 66 - Man2Safe.pml:54 - [up = (up-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][66] = 1;
		(trpt+1)->bup.oval = now.up;
		now.up = (now.up-1);
#ifdef VAR_RANGES
		logval("up", now.up);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 30: /* STATE 67 - Man2Safe.pml:56 - [((up==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][67] = 1;
		if (!((now.up==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 31: /* STATE 68 - Man2Safe.pml:56 - [downSem = (downSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][68] = 1;
		(trpt+1)->bup.oval = now.downSem;
		now.downSem = (now.downSem+1);
#ifdef VAR_RANGES
		logval("downSem", now.downSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 32: /* STATE 74 - Man2Safe.pml:59 - [inUpSem = (inUpSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][74] = 1;
		(trpt+1)->bup.oval = now.inUpSem;
		now.inUpSem = (now.inUpSem+1);
#ifdef VAR_RANGES
		logval("inUpSem", now.inUpSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 33: /* STATE 81 - Man2Safe.pml:62 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][81] = 1;
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

