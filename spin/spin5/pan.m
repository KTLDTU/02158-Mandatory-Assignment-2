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

		 /* CLAIM fair0 */
	case 3: /* STATE 1 - _spin_nvr.tmp:3 - [((!(!((P[2]._p==entry)))&&!((P[2]._p==crit))))] (0:0:0 - 1) */
		
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
		reached[2][1] = 1;
		if (!(( !( !((((int)((P0 *)Pptr(BASE+2))->_p)==2)))&& !((((int)((P0 *)Pptr(BASE+2))->_p)==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: /* STATE 7 - _spin_nvr.tmp:8 - [(!((P[2]._p==crit)))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported7 = 0;
			int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported7)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported7 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported7 = 0;
			if (verbose && !reported7)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported7 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][7] = 1;
		if (!( !((((int)((P0 *)Pptr(BASE+2))->_p)==4))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: /* STATE 11 - _spin_nvr.tmp:10 - [-end-] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported11 = 0;
			int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported11)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported11 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported11 = 0;
			if (verbose && !reported11)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported11 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][11] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Coordinator */
	case 6: /* STATE 1 - Lab2c.pml:48 - [((i==7))] (14:0:2 - 1) */
		IfNotBlocked
		reached[1][1] = 1;
		if (!((((P1 *)this)->_2_i==7)))
			continue;
		/* dead 1: _2_i */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->_2_i;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->_2_i = 0;
		/* merge: i = 0(0, 2, 14) */
		reached[1][2] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)this)->_2_i;
		((P1 *)this)->_2_i = 0;
#ifdef VAR_RANGES
		logval("Coordinator:i", ((P1 *)this)->_2_i);
#endif
		;
		/* merge: .(goto)(0, 15, 14) */
		reached[1][15] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 7: /* STATE 5 - Lab2c.pml:51 - [(enter[i])] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][5] = 1;
		if (!(((int)now.enter[ Index(((P1 *)this)->_2_i, 7) ])))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: /* STATE 6 - Lab2c.pml:52 - [enter[i] = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][6] = 1;
		(trpt+1)->bup.oval = ((int)now.enter[ Index(((P1 *)this)->_2_i, 7) ]);
		now.enter[ Index(((P1 *)this)->_2_i, 7) ] = 0;
#ifdef VAR_RANGES
		logval("enter[Coordinator:i]", ((int)now.enter[ Index(((P1 *)this)->_2_i, 7) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 9: /* STATE 7 - Lab2c.pml:53 - [ok[i] = 1] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][7] = 1;
		(trpt+1)->bup.oval = ((int)now.ok[ Index(((P1 *)this)->_2_i, 7) ]);
		now.ok[ Index(((P1 *)this)->_2_i, 7) ] = 1;
#ifdef VAR_RANGES
		logval("ok[Coordinator:i]", ((int)now.ok[ Index(((P1 *)this)->_2_i, 7) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 10: /* STATE 8 - Lab2c.pml:54 - [(!(ok[i]))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][8] = 1;
		if (!( !(((int)now.ok[ Index(((P1 *)this)->_2_i, 7) ]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: /* STATE 10 - Lab2c.pml:55 - [(1)] (14:0:1 - 1) */
		IfNotBlocked
		reached[1][10] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(14, 12, 14) */
		reached[1][12] = 1;
		;
		/* merge: i = (i+1)(14, 13, 14) */
		reached[1][13] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->_2_i;
		((P1 *)this)->_2_i = (((P1 *)this)->_2_i+1);
#ifdef VAR_RANGES
		logval("Coordinator:i", ((P1 *)this)->_2_i);
#endif
		;
		/* merge: .(goto)(0, 15, 14) */
		reached[1][15] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 12: /* STATE 13 - Lab2c.pml:57 - [i = (i+1)] (0:14:1 - 3) */
		IfNotBlocked
		reached[1][13] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->_2_i;
		((P1 *)this)->_2_i = (((P1 *)this)->_2_i+1);
#ifdef VAR_RANGES
		logval("Coordinator:i", ((P1 *)this)->_2_i);
#endif
		;
		/* merge: .(goto)(0, 15, 14) */
		reached[1][15] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 13: /* STATE 17 - Lab2c.pml:59 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][17] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC P */
	case 14: /* STATE 2 - Lab2c.pml:26 - [enter[_pid] = 1] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][2] = 1;
		(trpt+1)->bup.oval = ((int)now.enter[ Index(((int)((P0 *)this)->_pid), 7) ]);
		now.enter[ Index(((P0 *)this)->_pid, 7) ] = 1;
#ifdef VAR_RANGES
		logval("enter[_pid]", ((int)now.enter[ Index(((int)((P0 *)this)->_pid), 7) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 15: /* STATE 3 - Lab2c.pml:27 - [(ok[_pid])] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][3] = 1;
		if (!(((int)now.ok[ Index(((int)((P0 *)this)->_pid), 7) ])))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: /* STATE 4 - Lab2c.pml:30 - [incrit = (incrit+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][4] = 1;
		(trpt+1)->bup.oval = now.incrit;
		now.incrit = (now.incrit+1);
#ifdef VAR_RANGES
		logval("incrit", now.incrit);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: /* STATE 5 - Lab2c.pml:31 - [assert((incrit==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][5] = 1;
		spin_assert((now.incrit==1), "(incrit==1)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 18: /* STATE 6 - Lab2c.pml:32 - [incrit = (incrit-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][6] = 1;
		(trpt+1)->bup.oval = now.incrit;
		now.incrit = (now.incrit-1);
#ifdef VAR_RANGES
		logval("incrit", now.incrit);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: /* STATE 7 - Lab2c.pml:36 - [ok[_pid] = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][7] = 1;
		(trpt+1)->bup.oval = ((int)now.ok[ Index(((int)((P0 *)this)->_pid), 7) ]);
		now.ok[ Index(((P0 *)this)->_pid, 7) ] = 0;
#ifdef VAR_RANGES
		logval("ok[_pid]", ((int)now.ok[ Index(((int)((P0 *)this)->_pid), 7) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: /* STATE 17 - Lab2c.pml:42 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][17] = 1;
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

