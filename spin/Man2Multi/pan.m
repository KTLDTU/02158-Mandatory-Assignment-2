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
	case 3: /* STATE 1 - Man2Safe.pml:15 - [((_pid==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][1] = 1;
		if (!((((int)((P0 *)this)->_pid)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: /* STATE 2 - Man2Safe.pml:15 - [assert(!(((up>0)&&(down>0))))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][2] = 1;
		spin_assert( !(((now.up>0)&&(now.down>0))), " !(((up>0)&&(down>0)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 5: /* STATE 3 - Man2Safe.pml:16 - [((_pid>0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][3] = 1;
		if (!((((int)((P0 *)this)->_pid)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: /* STATE 5 - Man2Safe.pml:20 - [((_pid<5))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][5] = 1;
		if (!((((int)((P0 *)this)->_pid)<5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: /* STATE 6 - Man2Safe.pml:20 - [((downSem>0))] (19:0:1 - 1) */
		IfNotBlocked
		reached[0][6] = 1;
		if (!((now.downSem>0)))
			continue;
		/* merge: downSem = (downSem-1)(0, 7, 19) */
		reached[0][7] = 1;
		(trpt+1)->bup.oval = now.downSem;
		now.downSem = (now.downSem-1);
#ifdef VAR_RANGES
		logval("downSem", now.downSem);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 8: /* STATE 9 - Man2Safe.pml:22 - [((down==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][9] = 1;
		if (!((now.down==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: /* STATE 10 - Man2Safe.pml:22 - [((upSem>0))] (21:0:2 - 1) */
		IfNotBlocked
		reached[0][10] = 1;
		if (!((now.upSem>0)))
			continue;
		/* merge: upSem = (upSem-1)(21, 11, 21) */
		reached[0][11] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.upSem;
		now.upSem = (now.upSem-1);
#ifdef VAR_RANGES
		logval("upSem", now.upSem);
#endif
		;
		/* merge: down = (down+1)(21, 13, 21) */
		reached[0][13] = 1;
		(trpt+1)->bup.ovals[1] = now.down;
		now.down = (now.down+1);
#ifdef VAR_RANGES
		logval("down", now.down);
#endif
		;
		/* merge: .(goto)(21, 18, 21) */
		reached[0][18] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 10: /* STATE 18 - Man2Safe.pml:24 - [.(goto)] (0:21:0 - 2) */
		IfNotBlocked
		reached[0][18] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 11: /* STATE 15 - Man2Safe.pml:23 - [down = (down+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][15] = 1;
		(trpt+1)->bup.oval = now.down;
		now.down = (now.down+1);
#ifdef VAR_RANGES
		logval("down", now.down);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 12: /* STATE 16 - Man2Safe.pml:23 - [(1)] (21:0:0 - 1) */
		IfNotBlocked
		reached[0][16] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(21, 18, 21) */
		reached[0][18] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 13: /* STATE 20 - Man2Safe.pml:25 - [downSem = (downSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][20] = 1;
		(trpt+1)->bup.oval = now.downSem;
		now.downSem = (now.downSem+1);
#ifdef VAR_RANGES
		logval("downSem", now.downSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: /* STATE 23 - Man2Safe.pml:26 - [((upSem>0))] (36:0:1 - 1) */
		IfNotBlocked
		reached[0][23] = 1;
		if (!((now.upSem>0)))
			continue;
		/* merge: upSem = (upSem-1)(0, 24, 36) */
		reached[0][24] = 1;
		(trpt+1)->bup.oval = now.upSem;
		now.upSem = (now.upSem-1);
#ifdef VAR_RANGES
		logval("upSem", now.upSem);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 15: /* STATE 26 - Man2Safe.pml:28 - [((up==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][26] = 1;
		if (!((now.up==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: /* STATE 27 - Man2Safe.pml:28 - [((downSem>0))] (38:0:2 - 1) */
		IfNotBlocked
		reached[0][27] = 1;
		if (!((now.downSem>0)))
			continue;
		/* merge: downSem = (downSem-1)(38, 28, 38) */
		reached[0][28] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.downSem;
		now.downSem = (now.downSem-1);
#ifdef VAR_RANGES
		logval("downSem", now.downSem);
#endif
		;
		/* merge: up = (up+1)(38, 30, 38) */
		reached[0][30] = 1;
		(trpt+1)->bup.ovals[1] = now.up;
		now.up = (now.up+1);
#ifdef VAR_RANGES
		logval("up", now.up);
#endif
		;
		/* merge: .(goto)(38, 35, 38) */
		reached[0][35] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 17: /* STATE 35 - Man2Safe.pml:30 - [.(goto)] (0:38:0 - 2) */
		IfNotBlocked
		reached[0][35] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 18: /* STATE 32 - Man2Safe.pml:29 - [up = (up+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][32] = 1;
		(trpt+1)->bup.oval = now.up;
		now.up = (now.up+1);
#ifdef VAR_RANGES
		logval("up", now.up);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: /* STATE 33 - Man2Safe.pml:29 - [(1)] (38:0:0 - 1) */
		IfNotBlocked
		reached[0][33] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(38, 35, 38) */
		reached[0][35] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 20: /* STATE 37 - Man2Safe.pml:31 - [upSem = (upSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][37] = 1;
		(trpt+1)->bup.oval = now.upSem;
		now.upSem = (now.upSem+1);
#ifdef VAR_RANGES
		logval("upSem", now.upSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 21: /* STATE 41 - Man2Safe.pml:36 - [((_pid<5))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][41] = 1;
		if (!((((int)((P0 *)this)->_pid)<5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 22: /* STATE 42 - Man2Safe.pml:36 - [down = (down-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][42] = 1;
		(trpt+1)->bup.oval = now.down;
		now.down = (now.down-1);
#ifdef VAR_RANGES
		logval("down", now.down);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 23: /* STATE 43 - Man2Safe.pml:38 - [((down==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][43] = 1;
		if (!((now.down==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 24: /* STATE 44 - Man2Safe.pml:38 - [upSem = (upSem+1)] (0:63:1 - 1) */
		IfNotBlocked
		reached[0][44] = 1;
		(trpt+1)->bup.oval = now.upSem;
		now.upSem = (now.upSem+1);
#ifdef VAR_RANGES
		logval("upSem", now.upSem);
#endif
		;
		/* merge: .(goto)(63, 49, 63) */
		reached[0][49] = 1;
		;
		/* merge: .(goto)(0, 62, 63) */
		reached[0][62] = 1;
		;
		/* merge: .(goto)(0, 64, 63) */
		reached[0][64] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 25: /* STATE 49 - Man2Safe.pml:40 - [.(goto)] (0:63:0 - 2) */
		IfNotBlocked
		reached[0][49] = 1;
		;
		/* merge: .(goto)(0, 62, 63) */
		reached[0][62] = 1;
		;
		/* merge: .(goto)(0, 64, 63) */
		reached[0][64] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 26: /* STATE 47 - Man2Safe.pml:39 - [(1)] (63:0:0 - 1) */
		IfNotBlocked
		reached[0][47] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(63, 49, 63) */
		reached[0][49] = 1;
		;
		/* merge: .(goto)(0, 62, 63) */
		reached[0][62] = 1;
		;
		/* merge: .(goto)(0, 64, 63) */
		reached[0][64] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 27: /* STATE 52 - Man2Safe.pml:41 - [up = (up-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][52] = 1;
		(trpt+1)->bup.oval = now.up;
		now.up = (now.up-1);
#ifdef VAR_RANGES
		logval("up", now.up);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 28: /* STATE 53 - Man2Safe.pml:43 - [((up==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][53] = 1;
		if (!((now.up==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 29: /* STATE 54 - Man2Safe.pml:43 - [downSem = (downSem+1)] (0:63:1 - 1) */
		IfNotBlocked
		reached[0][54] = 1;
		(trpt+1)->bup.oval = now.downSem;
		now.downSem = (now.downSem+1);
#ifdef VAR_RANGES
		logval("downSem", now.downSem);
#endif
		;
		/* merge: .(goto)(63, 59, 63) */
		reached[0][59] = 1;
		;
		/* merge: .(goto)(0, 62, 63) */
		reached[0][62] = 1;
		;
		/* merge: .(goto)(0, 64, 63) */
		reached[0][64] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 30: /* STATE 59 - Man2Safe.pml:45 - [.(goto)] (0:63:0 - 2) */
		IfNotBlocked
		reached[0][59] = 1;
		;
		/* merge: .(goto)(0, 62, 63) */
		reached[0][62] = 1;
		;
		/* merge: .(goto)(0, 64, 63) */
		reached[0][64] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 31: /* STATE 57 - Man2Safe.pml:44 - [(1)] (63:0:0 - 1) */
		IfNotBlocked
		reached[0][57] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(63, 59, 63) */
		reached[0][59] = 1;
		;
		/* merge: .(goto)(0, 62, 63) */
		reached[0][62] = 1;
		;
		/* merge: .(goto)(0, 64, 63) */
		reached[0][64] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 32: /* STATE 66 - Man2Safe.pml:48 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][66] = 1;
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

