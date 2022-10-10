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
	case 3: /* STATE 1 - Man2Multi.pml:15 - [((_pid==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][1] = 1;
		if (!((((int)((P0 *)this)->_pid)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: /* STATE 2 - Man2Multi.pml:15 - [assert(!(((up>0)&&(down>0))))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][2] = 1;
		spin_assert( !(((now.up>0)&&(now.down>0))), " !(((up>0)&&(down>0)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 5: /* STATE 3 - Man2Multi.pml:16 - [((_pid>0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][3] = 1;
		if (!((((int)((P0 *)this)->_pid)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: /* STATE 5 - Man2Multi.pml:20 - [((_pid<5))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][5] = 1;
		if (!((((int)((P0 *)this)->_pid)<5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: /* STATE 6 - Man2Multi.pml:20 - [((downSem>0))] (18:0:1 - 1) */
		IfNotBlocked
		reached[0][6] = 1;
		if (!((now.downSem>0)))
			continue;
		/* merge: downSem = (downSem-1)(0, 7, 18) */
		reached[0][7] = 1;
		(trpt+1)->bup.oval = now.downSem;
		now.downSem = (now.downSem-1);
#ifdef VAR_RANGES
		logval("downSem", now.downSem);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 8: /* STATE 9 - Man2Multi.pml:22 - [((down==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][9] = 1;
		if (!((now.down==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: /* STATE 10 - Man2Multi.pml:22 - [((upSem>0))] (21:0:2 - 1) */
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
		/* merge: .(goto)(0, 19, 21) */
		reached[0][19] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 10: /* STATE 16 - Man2Multi.pml:23 - [down = (down+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][16] = 1;
		(trpt+1)->bup.oval = now.down;
		now.down = (now.down+1);
#ifdef VAR_RANGES
		logval("down", now.down);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 11: /* STATE 20 - Man2Multi.pml:25 - [downSem = (downSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][20] = 1;
		(trpt+1)->bup.oval = now.downSem;
		now.downSem = (now.downSem+1);
#ifdef VAR_RANGES
		logval("downSem", now.downSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 12: /* STATE 23 - Man2Multi.pml:26 - [((upSem>0))] (35:0:1 - 1) */
		IfNotBlocked
		reached[0][23] = 1;
		if (!((now.upSem>0)))
			continue;
		/* merge: upSem = (upSem-1)(0, 24, 35) */
		reached[0][24] = 1;
		(trpt+1)->bup.oval = now.upSem;
		now.upSem = (now.upSem-1);
#ifdef VAR_RANGES
		logval("upSem", now.upSem);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 13: /* STATE 26 - Man2Multi.pml:28 - [((up==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][26] = 1;
		if (!((now.up==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: /* STATE 27 - Man2Multi.pml:28 - [((downSem>0))] (38:0:2 - 1) */
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
		/* merge: .(goto)(0, 36, 38) */
		reached[0][36] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 15: /* STATE 33 - Man2Multi.pml:29 - [up = (up+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][33] = 1;
		(trpt+1)->bup.oval = now.up;
		now.up = (now.up+1);
#ifdef VAR_RANGES
		logval("up", now.up);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: /* STATE 37 - Man2Multi.pml:31 - [upSem = (upSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][37] = 1;
		(trpt+1)->bup.oval = now.upSem;
		now.upSem = (now.upSem+1);
#ifdef VAR_RANGES
		logval("upSem", now.upSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: /* STATE 41 - Man2Multi.pml:36 - [((_pid<5))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][41] = 1;
		if (!((((int)((P0 *)this)->_pid)<5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 18: /* STATE 42 - Man2Multi.pml:36 - [down = (down-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][42] = 1;
		(trpt+1)->bup.oval = now.down;
		now.down = (now.down-1);
#ifdef VAR_RANGES
		logval("down", now.down);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: /* STATE 43 - Man2Multi.pml:38 - [((down==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][43] = 1;
		if (!((now.down==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 20: /* STATE 44 - Man2Multi.pml:38 - [upSem = (upSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][44] = 1;
		(trpt+1)->bup.oval = now.upSem;
		now.upSem = (now.upSem+1);
#ifdef VAR_RANGES
		logval("upSem", now.upSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 21: /* STATE 51 - Man2Multi.pml:41 - [up = (up-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][51] = 1;
		(trpt+1)->bup.oval = now.up;
		now.up = (now.up-1);
#ifdef VAR_RANGES
		logval("up", now.up);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 22: /* STATE 52 - Man2Multi.pml:43 - [((up==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][52] = 1;
		if (!((now.up==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 23: /* STATE 53 - Man2Multi.pml:43 - [downSem = (downSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][53] = 1;
		(trpt+1)->bup.oval = now.downSem;
		now.downSem = (now.downSem+1);
#ifdef VAR_RANGES
		logval("downSem", now.downSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 24: /* STATE 64 - Man2Multi.pml:48 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][64] = 1;
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

