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
	case 3: /* STATE 1 - Man2Safe.pml:19 - [((_pid==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][1] = 1;
		if (!((((int)((P0 *)this)->_pid)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: /* STATE 3 - Man2Safe.pml:20 - [((_pid>0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][3] = 1;
		if (!((((int)((P0 *)this)->_pid)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: /* STATE 5 - Man2Safe.pml:24 - [((_pid<5))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][5] = 1;
		if (!((((int)((P0 *)this)->_pid)<5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: /* STATE 6 - Man2Safe.pml:26 - [((inEnterSem>0))] (11:0:1 - 1) */
		IfNotBlocked
		reached[0][6] = 1;
		if (!((now.inEnterSem>0)))
			continue;
		/* merge: inEnterSem = (inEnterSem-1)(0, 7, 11) */
		reached[0][7] = 1;
		(trpt+1)->bup.oval = now.inEnterSem;
		now.inEnterSem = (now.inEnterSem-1);
#ifdef VAR_RANGES
		logval("inEnterSem", now.inEnterSem);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 7: /* STATE 9 - Man2Safe.pml:27 - [((downSem>0))] (14:0:1 - 1) */
		IfNotBlocked
		reached[0][9] = 1;
		if (!((now.downSem>0)))
			continue;
		/* merge: downSem = (downSem-1)(0, 10, 14) */
		reached[0][10] = 1;
		(trpt+1)->bup.oval = now.downSem;
		now.downSem = (now.downSem-1);
#ifdef VAR_RANGES
		logval("downSem", now.downSem);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 8: /* STATE 12 - Man2Safe.pml:28 - [((inDownSem>0))] (23:0:1 - 1) */
		IfNotBlocked
		reached[0][12] = 1;
		if (!((now.inDownSem>0)))
			continue;
		/* merge: inDownSem = (inDownSem-1)(0, 13, 23) */
		reached[0][13] = 1;
		(trpt+1)->bup.oval = now.inDownSem;
		now.inDownSem = (now.inDownSem-1);
#ifdef VAR_RANGES
		logval("inDownSem", now.inDownSem);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 9: /* STATE 15 - Man2Safe.pml:31 - [((down==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][15] = 1;
		if (!((now.down==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: /* STATE 16 - Man2Safe.pml:31 - [((upSem>0))] (19:0:1 - 1) */
		IfNotBlocked
		reached[0][16] = 1;
		if (!((now.upSem>0)))
			continue;
		/* merge: upSem = (upSem-1)(0, 17, 19) */
		reached[0][17] = 1;
		(trpt+1)->bup.oval = now.upSem;
		now.upSem = (now.upSem-1);
#ifdef VAR_RANGES
		logval("upSem", now.upSem);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 11: /* STATE 19 - Man2Safe.pml:31 - [down = (down+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][19] = 1;
		(trpt+1)->bup.oval = now.down;
		now.down = (now.down+1);
#ifdef VAR_RANGES
		logval("down", now.down);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 12: /* STATE 21 - Man2Safe.pml:32 - [down = (down+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][21] = 1;
		(trpt+1)->bup.oval = now.down;
		now.down = (now.down+1);
#ifdef VAR_RANGES
		logval("down", now.down);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 13: /* STATE 25 - Man2Safe.pml:35 - [inDownSem = (inDownSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][25] = 1;
		(trpt+1)->bup.oval = now.inDownSem;
		now.inDownSem = (now.inDownSem+1);
#ifdef VAR_RANGES
		logval("inDownSem", now.inDownSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: /* STATE 27 - Man2Safe.pml:36 - [downSem = (downSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][27] = 1;
		(trpt+1)->bup.oval = now.downSem;
		now.downSem = (now.downSem+1);
#ifdef VAR_RANGES
		logval("downSem", now.downSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 15: /* STATE 29 - Man2Safe.pml:37 - [inEnterSem = (inEnterSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][29] = 1;
		(trpt+1)->bup.oval = now.inEnterSem;
		now.inEnterSem = (now.inEnterSem+1);
#ifdef VAR_RANGES
		logval("inEnterSem", now.inEnterSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: /* STATE 32 - Man2Safe.pml:41 - [((inEnterSem>0))] (37:0:1 - 1) */
		IfNotBlocked
		reached[0][32] = 1;
		if (!((now.inEnterSem>0)))
			continue;
		/* merge: inEnterSem = (inEnterSem-1)(0, 33, 37) */
		reached[0][33] = 1;
		(trpt+1)->bup.oval = now.inEnterSem;
		now.inEnterSem = (now.inEnterSem-1);
#ifdef VAR_RANGES
		logval("inEnterSem", now.inEnterSem);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 17: /* STATE 35 - Man2Safe.pml:42 - [((upSem>0))] (40:0:1 - 1) */
		IfNotBlocked
		reached[0][35] = 1;
		if (!((now.upSem>0)))
			continue;
		/* merge: upSem = (upSem-1)(0, 36, 40) */
		reached[0][36] = 1;
		(trpt+1)->bup.oval = now.upSem;
		now.upSem = (now.upSem-1);
#ifdef VAR_RANGES
		logval("upSem", now.upSem);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 18: /* STATE 38 - Man2Safe.pml:43 - [((inUpSem>0))] (49:0:1 - 1) */
		IfNotBlocked
		reached[0][38] = 1;
		if (!((now.inUpSem>0)))
			continue;
		/* merge: inUpSem = (inUpSem-1)(0, 39, 49) */
		reached[0][39] = 1;
		(trpt+1)->bup.oval = now.inUpSem;
		now.inUpSem = (now.inUpSem-1);
#ifdef VAR_RANGES
		logval("inUpSem", now.inUpSem);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 19: /* STATE 41 - Man2Safe.pml:46 - [((up==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][41] = 1;
		if (!((now.up==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 20: /* STATE 42 - Man2Safe.pml:46 - [((downSem>0))] (45:0:1 - 1) */
		IfNotBlocked
		reached[0][42] = 1;
		if (!((now.downSem>0)))
			continue;
		/* merge: downSem = (downSem-1)(0, 43, 45) */
		reached[0][43] = 1;
		(trpt+1)->bup.oval = now.downSem;
		now.downSem = (now.downSem-1);
#ifdef VAR_RANGES
		logval("downSem", now.downSem);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 21: /* STATE 45 - Man2Safe.pml:46 - [up = (up+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][45] = 1;
		(trpt+1)->bup.oval = now.up;
		now.up = (now.up+1);
#ifdef VAR_RANGES
		logval("up", now.up);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 22: /* STATE 47 - Man2Safe.pml:47 - [up = (up+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][47] = 1;
		(trpt+1)->bup.oval = now.up;
		now.up = (now.up+1);
#ifdef VAR_RANGES
		logval("up", now.up);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 23: /* STATE 51 - Man2Safe.pml:50 - [inUpSem = (inUpSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][51] = 1;
		(trpt+1)->bup.oval = now.inUpSem;
		now.inUpSem = (now.inUpSem+1);
#ifdef VAR_RANGES
		logval("inUpSem", now.inUpSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 24: /* STATE 53 - Man2Safe.pml:51 - [upSem = (upSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][53] = 1;
		(trpt+1)->bup.oval = now.upSem;
		now.upSem = (now.upSem+1);
#ifdef VAR_RANGES
		logval("upSem", now.upSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 25: /* STATE 55 - Man2Safe.pml:52 - [inEnterSem = (inEnterSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][55] = 1;
		(trpt+1)->bup.oval = now.inEnterSem;
		now.inEnterSem = (now.inEnterSem+1);
#ifdef VAR_RANGES
		logval("inEnterSem", now.inEnterSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 26: /* STATE 59 - Man2Safe.pml:57 - [((_pid<5))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][59] = 1;
		if (!((((int)((P0 *)this)->_pid)<5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 27: /* STATE 60 - Man2Safe.pml:57 - [((inDownSem>0))] (63:0:1 - 1) */
		IfNotBlocked
		reached[0][60] = 1;
		if (!((now.inDownSem>0)))
			continue;
		/* merge: inDownSem = (inDownSem-1)(0, 61, 63) */
		reached[0][61] = 1;
		(trpt+1)->bup.oval = now.inDownSem;
		now.inDownSem = (now.inDownSem-1);
#ifdef VAR_RANGES
		logval("inDownSem", now.inDownSem);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 28: /* STATE 63 - Man2Safe.pml:58 - [down = (down-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][63] = 1;
		(trpt+1)->bup.oval = now.down;
		now.down = (now.down-1);
#ifdef VAR_RANGES
		logval("down", now.down);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 29: /* STATE 64 - Man2Safe.pml:60 - [((down==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][64] = 1;
		if (!((now.down==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 30: /* STATE 65 - Man2Safe.pml:60 - [upSem = (upSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][65] = 1;
		(trpt+1)->bup.oval = now.upSem;
		now.upSem = (now.upSem+1);
#ifdef VAR_RANGES
		logval("upSem", now.upSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 31: /* STATE 71 - Man2Safe.pml:63 - [inDownSem = (inDownSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][71] = 1;
		(trpt+1)->bup.oval = now.inDownSem;
		now.inDownSem = (now.inDownSem+1);
#ifdef VAR_RANGES
		logval("inDownSem", now.inDownSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 32: /* STATE 74 - Man2Safe.pml:64 - [((inUpSem>0))] (77:0:1 - 1) */
		IfNotBlocked
		reached[0][74] = 1;
		if (!((now.inUpSem>0)))
			continue;
		/* merge: inUpSem = (inUpSem-1)(0, 75, 77) */
		reached[0][75] = 1;
		(trpt+1)->bup.oval = now.inUpSem;
		now.inUpSem = (now.inUpSem-1);
#ifdef VAR_RANGES
		logval("inUpSem", now.inUpSem);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 33: /* STATE 77 - Man2Safe.pml:65 - [up = (up-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][77] = 1;
		(trpt+1)->bup.oval = now.up;
		now.up = (now.up-1);
#ifdef VAR_RANGES
		logval("up", now.up);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 34: /* STATE 78 - Man2Safe.pml:67 - [((up==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][78] = 1;
		if (!((now.up==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 35: /* STATE 79 - Man2Safe.pml:67 - [downSem = (downSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][79] = 1;
		(trpt+1)->bup.oval = now.downSem;
		now.downSem = (now.downSem+1);
#ifdef VAR_RANGES
		logval("downSem", now.downSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 36: /* STATE 85 - Man2Safe.pml:70 - [inUpSem = (inUpSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][85] = 1;
		(trpt+1)->bup.oval = now.inUpSem;
		now.inUpSem = (now.inUpSem+1);
#ifdef VAR_RANGES
		logval("inUpSem", now.inUpSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 37: /* STATE 92 - Man2Safe.pml:73 - [-end-] (0:0:0 - 3) */
		IfNotBlocked
		reached[0][92] = 1;
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

