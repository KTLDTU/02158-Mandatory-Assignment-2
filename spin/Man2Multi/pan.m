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
	case 7: /* STATE 6 - Man2Multi.pml:20 - [((downSem>0))] (15:0:1 - 1) */
		IfNotBlocked
		reached[0][6] = 1;
		if (!((now.downSem>0)))
			continue;
		/* merge: downSem = (downSem-1)(0, 7, 15) */
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
	case 9: /* STATE 10 - Man2Multi.pml:22 - [((upSem>0))] (17:0:1 - 1) */
		IfNotBlocked
		reached[0][10] = 1;
		if (!((now.upSem>0)))
			continue;
		/* merge: upSem = (upSem-1)(0, 11, 17) */
		reached[0][11] = 1;
		(trpt+1)->bup.oval = now.upSem;
		now.upSem = (now.upSem-1);
#ifdef VAR_RANGES
		logval("upSem", now.upSem);
#endif
		;
		/* merge: .(goto)(0, 16, 17) */
		reached[0][16] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 10: /* STATE 17 - Man2Multi.pml:25 - [temp = down] (0:0:1 - 3) */
		IfNotBlocked
		reached[0][17] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_1_temp;
		((P0 *)this)->_1_temp = now.down;
#ifdef VAR_RANGES
		logval("Car:temp", ((P0 *)this)->_1_temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 11: /* STATE 18 - Man2Multi.pml:26 - [down = (temp+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][18] = 1;
		(trpt+1)->bup.oval = now.down;
		now.down = (((P0 *)this)->_1_temp+1);
#ifdef VAR_RANGES
		logval("down", now.down);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 12: /* STATE 19 - Man2Multi.pml:27 - [downSem = (downSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][19] = 1;
		(trpt+1)->bup.oval = now.downSem;
		now.downSem = (now.downSem+1);
#ifdef VAR_RANGES
		logval("downSem", now.downSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 13: /* STATE 22 - Man2Multi.pml:28 - [((upSem>0))] (31:0:1 - 1) */
		IfNotBlocked
		reached[0][22] = 1;
		if (!((now.upSem>0)))
			continue;
		/* merge: upSem = (upSem-1)(0, 23, 31) */
		reached[0][23] = 1;
		(trpt+1)->bup.oval = now.upSem;
		now.upSem = (now.upSem-1);
#ifdef VAR_RANGES
		logval("upSem", now.upSem);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 14: /* STATE 25 - Man2Multi.pml:30 - [((up==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][25] = 1;
		if (!((now.up==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 15: /* STATE 26 - Man2Multi.pml:30 - [((downSem>0))] (33:0:1 - 1) */
		IfNotBlocked
		reached[0][26] = 1;
		if (!((now.downSem>0)))
			continue;
		/* merge: downSem = (downSem-1)(0, 27, 33) */
		reached[0][27] = 1;
		(trpt+1)->bup.oval = now.downSem;
		now.downSem = (now.downSem-1);
#ifdef VAR_RANGES
		logval("downSem", now.downSem);
#endif
		;
		/* merge: .(goto)(0, 32, 33) */
		reached[0][32] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 16: /* STATE 33 - Man2Multi.pml:33 - [temp = up] (0:0:1 - 3) */
		IfNotBlocked
		reached[0][33] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_1_temp;
		((P0 *)this)->_1_temp = now.up;
#ifdef VAR_RANGES
		logval("Car:temp", ((P0 *)this)->_1_temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: /* STATE 34 - Man2Multi.pml:34 - [up = (temp+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][34] = 1;
		(trpt+1)->bup.oval = now.up;
		now.up = (((P0 *)this)->_1_temp+1);
#ifdef VAR_RANGES
		logval("up", now.up);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 18: /* STATE 35 - Man2Multi.pml:35 - [upSem = (upSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][35] = 1;
		(trpt+1)->bup.oval = now.upSem;
		now.upSem = (now.upSem+1);
#ifdef VAR_RANGES
		logval("upSem", now.upSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: /* STATE 39 - Man2Multi.pml:40 - [((_pid<5))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][39] = 1;
		if (!((((int)((P0 *)this)->_pid)<5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 20: /* STATE 40 - Man2Multi.pml:40 - [temp = down] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][40] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_1_temp;
		((P0 *)this)->_1_temp = now.down;
#ifdef VAR_RANGES
		logval("Car:temp", ((P0 *)this)->_1_temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 21: /* STATE 41 - Man2Multi.pml:41 - [down = (temp-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][41] = 1;
		(trpt+1)->bup.oval = now.down;
		now.down = (((P0 *)this)->_1_temp-1);
#ifdef VAR_RANGES
		logval("down", now.down);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 22: /* STATE 42 - Man2Multi.pml:43 - [((down==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][42] = 1;
		if (!((now.down==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 23: /* STATE 43 - Man2Multi.pml:43 - [upSem = (upSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][43] = 1;
		(trpt+1)->bup.oval = now.upSem;
		now.upSem = (now.upSem+1);
#ifdef VAR_RANGES
		logval("upSem", now.upSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 24: /* STATE 50 - Man2Multi.pml:46 - [temp = up] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][50] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_1_temp;
		((P0 *)this)->_1_temp = now.up;
#ifdef VAR_RANGES
		logval("Car:temp", ((P0 *)this)->_1_temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 25: /* STATE 51 - Man2Multi.pml:47 - [up = (temp-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][51] = 1;
		(trpt+1)->bup.oval = now.up;
		now.up = (((P0 *)this)->_1_temp-1);
#ifdef VAR_RANGES
		logval("up", now.up);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 26: /* STATE 52 - Man2Multi.pml:49 - [((up==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][52] = 1;
		if (!((now.up==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 27: /* STATE 53 - Man2Multi.pml:49 - [downSem = (downSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][53] = 1;
		(trpt+1)->bup.oval = now.downSem;
		now.downSem = (now.downSem+1);
#ifdef VAR_RANGES
		logval("downSem", now.downSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 28: /* STATE 64 - Man2Multi.pml:54 - [-end-] (0:0:0 - 1) */
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

