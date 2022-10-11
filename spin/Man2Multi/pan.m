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

		 /* CLAIM fejl */
	case 3: /* STATE 1 - _spin_nvr.tmp:3 - [((!(!((Car[1]._p==enter)))&&(Car[1]._p==leave)))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported1)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[1][1] = 1;
		if (!(( !( !((((int)((P0 *)Pptr(BASE+1))->_p)==47)))&&(((int)((P0 *)Pptr(BASE+1))->_p)==77))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: /* STATE 3 - _spin_nvr.tmp:4 - [(!(!((Car[1]._p==enter))))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported3 = 0;
			int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported3)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported3 = 0;
			if (verbose && !reported3)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[1][3] = 1;
		if (!( !( !((((int)((P0 *)Pptr(BASE+1))->_p)==47)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: /* STATE 9 - _spin_nvr.tmp:9 - [((Car[1]._p==leave))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported9 = 0;
			int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported9)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported9 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported9 = 0;
			if (verbose && !reported9)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported9 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[1][9] = 1;
		if (!((((int)((P0 *)Pptr(BASE+1))->_p)==77)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: /* STATE 16 - _spin_nvr.tmp:14 - [-end-] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported16 = 0;
			int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported16)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported16 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported16 = 0;
			if (verbose && !reported16)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported16 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[1][16] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Car */
	case 7: /* STATE 1 - Man2Safe-fair.pml:20 - [((_pid==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][1] = 1;
		if (!((((int)((P0 *)this)->_pid)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: /* STATE 2 - Man2Safe-fair.pml:20 - [assert(!(((up>0)&&(down>0))))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][2] = 1;
		spin_assert( !(((now.up>0)&&(now.down>0))), " !(((up>0)&&(down>0)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 9: /* STATE 3 - Man2Safe-fair.pml:21 - [((_pid>0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][3] = 1;
		if (!((((int)((P0 *)this)->_pid)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: /* STATE 5 - Man2Safe-fair.pml:25 - [((_pid<5))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][5] = 1;
		if (!((((int)((P0 *)this)->_pid)<5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: /* STATE 6 - Man2Safe-fair.pml:25 - [((downSem>0))] (11:0:1 - 1) */
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
	case 12: /* STATE 9 - Man2Safe-fair.pml:27 - [((inDownSem>0))] (20:0:1 - 1) */
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
	case 13: /* STATE 12 - Man2Safe-fair.pml:30 - [((down==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][12] = 1;
		if (!((now.down==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: /* STATE 13 - Man2Safe-fair.pml:30 - [((upSem>0))] (16:0:1 - 1) */
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
	case 15: /* STATE 16 - Man2Safe-fair.pml:30 - [down = (down+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][16] = 1;
		(trpt+1)->bup.oval = now.down;
		now.down = (now.down+1);
#ifdef VAR_RANGES
		logval("down", now.down);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: /* STATE 18 - Man2Safe-fair.pml:31 - [down = (down+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][18] = 1;
		(trpt+1)->bup.oval = now.down;
		now.down = (now.down+1);
#ifdef VAR_RANGES
		logval("down", now.down);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: /* STATE 22 - Man2Safe-fair.pml:34 - [inDownSem = (inDownSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][22] = 1;
		(trpt+1)->bup.oval = now.inDownSem;
		now.inDownSem = (now.inDownSem+1);
#ifdef VAR_RANGES
		logval("inDownSem", now.inDownSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 18: /* STATE 24 - Man2Safe-fair.pml:36 - [downSem = (downSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][24] = 1;
		(trpt+1)->bup.oval = now.downSem;
		now.downSem = (now.downSem+1);
#ifdef VAR_RANGES
		logval("downSem", now.downSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: /* STATE 27 - Man2Safe-fair.pml:37 - [((upSem>0))] (32:0:1 - 1) */
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
	case 20: /* STATE 30 - Man2Safe-fair.pml:39 - [((inUpSem>0))] (41:0:1 - 1) */
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
	case 21: /* STATE 33 - Man2Safe-fair.pml:42 - [((up==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][33] = 1;
		if (!((now.up==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 22: /* STATE 34 - Man2Safe-fair.pml:42 - [((downSem>0))] (37:0:1 - 1) */
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
	case 23: /* STATE 37 - Man2Safe-fair.pml:42 - [up = (up+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][37] = 1;
		(trpt+1)->bup.oval = now.up;
		now.up = (now.up+1);
#ifdef VAR_RANGES
		logval("up", now.up);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 24: /* STATE 39 - Man2Safe-fair.pml:43 - [up = (up+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][39] = 1;
		(trpt+1)->bup.oval = now.up;
		now.up = (now.up+1);
#ifdef VAR_RANGES
		logval("up", now.up);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 25: /* STATE 43 - Man2Safe-fair.pml:46 - [inUpSem = (inUpSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][43] = 1;
		(trpt+1)->bup.oval = now.inUpSem;
		now.inUpSem = (now.inUpSem+1);
#ifdef VAR_RANGES
		logval("inUpSem", now.inUpSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 26: /* STATE 45 - Man2Safe-fair.pml:48 - [upSem = (upSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][45] = 1;
		(trpt+1)->bup.oval = now.upSem;
		now.upSem = (now.upSem+1);
#ifdef VAR_RANGES
		logval("upSem", now.upSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 27: /* STATE 49 - Man2Safe-fair.pml:53 - [((_pid<5))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][49] = 1;
		if (!((((int)((P0 *)this)->_pid)<5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 28: /* STATE 51 - Man2Safe-fair.pml:55 - [((inDownSem>0))] (59:0:1 - 1) */
		IfNotBlocked
		reached[0][51] = 1;
		if (!((now.inDownSem>0)))
			continue;
		/* merge: inDownSem = (inDownSem-1)(0, 52, 59) */
		reached[0][52] = 1;
		(trpt+1)->bup.oval = now.inDownSem;
		now.inDownSem = (now.inDownSem-1);
#ifdef VAR_RANGES
		logval("inDownSem", now.inDownSem);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 29: /* STATE 54 - Man2Safe-fair.pml:58 - [((down==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][54] = 1;
		if (!((now.down==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 30: /* STATE 55 - Man2Safe-fair.pml:58 - [upSem = (upSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][55] = 1;
		(trpt+1)->bup.oval = now.upSem;
		now.upSem = (now.upSem+1);
#ifdef VAR_RANGES
		logval("upSem", now.upSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 31: /* STATE 61 - Man2Safe-fair.pml:62 - [inDownSem = (inDownSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][61] = 1;
		(trpt+1)->bup.oval = now.inDownSem;
		now.inDownSem = (now.inDownSem+1);
#ifdef VAR_RANGES
		logval("inDownSem", now.inDownSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 32: /* STATE 64 - Man2Safe-fair.pml:65 - [((inUpSem>0))] (67:0:1 - 1) */
		IfNotBlocked
		reached[0][64] = 1;
		if (!((now.inUpSem>0)))
			continue;
		/* merge: inUpSem = (inUpSem-1)(0, 65, 67) */
		reached[0][65] = 1;
		(trpt+1)->bup.oval = now.inUpSem;
		now.inUpSem = (now.inUpSem-1);
#ifdef VAR_RANGES
		logval("inUpSem", now.inUpSem);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 33: /* STATE 67 - Man2Safe-fair.pml:66 - [up = (up-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][67] = 1;
		(trpt+1)->bup.oval = now.up;
		now.up = (now.up-1);
#ifdef VAR_RANGES
		logval("up", now.up);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 34: /* STATE 68 - Man2Safe-fair.pml:68 - [((up==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][68] = 1;
		if (!((now.up==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 35: /* STATE 69 - Man2Safe-fair.pml:68 - [downSem = (downSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][69] = 1;
		(trpt+1)->bup.oval = now.downSem;
		now.downSem = (now.downSem+1);
#ifdef VAR_RANGES
		logval("downSem", now.downSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 36: /* STATE 75 - Man2Safe-fair.pml:71 - [inUpSem = (inUpSem+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][75] = 1;
		(trpt+1)->bup.oval = now.inUpSem;
		now.inUpSem = (now.inUpSem+1);
#ifdef VAR_RANGES
		logval("inUpSem", now.inUpSem);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 37: /* STATE 82 - Man2Safe-fair.pml:74 - [-end-] (0:0:0 - 1) */
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

