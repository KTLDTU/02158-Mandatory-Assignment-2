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
	case 3: /* STATE 1 - _spin_nvr.tmp:3 - [((!(!((P[0]._p==entry)))&&!((P[0]._p==crit))))] (0:0:0 - 1) */
		
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
		if (!(( !( !((((int)((P0 *)Pptr(BASE+0))->_p)==2)))&& !((((int)((P0 *)Pptr(BASE+0))->_p)==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: /* STATE 7 - _spin_nvr.tmp:8 - [(!((P[0]._p==crit)))] (0:0:0 - 1) */
		
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
		if (!( !((((int)((P0 *)Pptr(BASE+0))->_p)==4))))
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
	case 6: /* STATE 1 - spin5.pml:52 - [i = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][1] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->_2_i;
		((P1 *)this)->_2_i = 0;
#ifdef VAR_RANGES
		logval("Coordinator:i", ((P1 *)this)->_2_i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 7: /* STATE 2 - spin5.pml:52 - [((i<=(5-1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][2] = 1;
		if (!((((P1 *)this)->_2_i<=(5-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: /* STATE 3 - spin5.pml:55 - [((enter[i]==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][3] = 1;
		if (!((((int)now.enter[ Index(((P1 *)this)->_2_i, 5) ])==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: /* STATE 4 - spin5.pml:55 - [ok[i] = 1] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][4] = 1;
		(trpt+1)->bup.oval = ((int)now.ok[ Index(((P1 *)this)->_2_i, 5) ]);
		now.ok[ Index(((P1 *)this)->_2_i, 5) ] = 1;
#ifdef VAR_RANGES
		logval("ok[Coordinator:i]", ((int)now.ok[ Index(((P1 *)this)->_2_i, 5) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 10: /* STATE 5 - spin5.pml:56 - [(!(enter[i]))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][5] = 1;
		if (!( !(((int)now.enter[ Index(((P1 *)this)->_2_i, 5) ]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: /* STATE 6 - spin5.pml:56 - [ok[i] = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][6] = 1;
		(trpt+1)->bup.oval = ((int)now.ok[ Index(((P1 *)this)->_2_i, 5) ]);
		now.ok[ Index(((P1 *)this)->_2_i, 5) ] = 0;
#ifdef VAR_RANGES
		logval("ok[Coordinator:i]", ((int)now.ok[ Index(((P1 *)this)->_2_i, 5) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 12: /* STATE 9 - spin5.pml:52 - [i = (i+1)] (0:12:1 - 2) */
		IfNotBlocked
		reached[1][9] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->_2_i;
		((P1 *)this)->_2_i = (((P1 *)this)->_2_i+1);
#ifdef VAR_RANGES
		logval("Coordinator:i", ((P1 *)this)->_2_i);
#endif
		;
		/* merge: .(goto)(0, 13, 12) */
		reached[1][13] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 13: /* STATE 18 - spin5.pml:60 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][18] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC P */
	case 14: /* STATE 2 - spin5.pml:27 - [enter[_pid] = 1] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][2] = 1;
		(trpt+1)->bup.oval = ((int)now.enter[ Index(((int)((P0 *)this)->_pid), 5) ]);
		now.enter[ Index(((P0 *)this)->_pid, 5) ] = 1;
#ifdef VAR_RANGES
		logval("enter[_pid]", ((int)now.enter[ Index(((int)((P0 *)this)->_pid), 5) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 15: /* STATE 3 - spin5.pml:28 - [(ok[_pid])] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][3] = 1;
		if (!(((int)now.ok[ Index(((int)((P0 *)this)->_pid), 5) ])))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: /* STATE 4 - spin5.pml:31 - [incrit = (incrit+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][4] = 1;
		(trpt+1)->bup.oval = now.incrit;
		now.incrit = (now.incrit+1);
#ifdef VAR_RANGES
		logval("incrit", now.incrit);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: /* STATE 5 - spin5.pml:32 - [assert((incrit==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][5] = 1;
		spin_assert((now.incrit==1), "(incrit==1)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 18: /* STATE 6 - spin5.pml:33 - [incrit = (incrit-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][6] = 1;
		(trpt+1)->bup.oval = now.incrit;
		now.incrit = (now.incrit-1);
#ifdef VAR_RANGES
		logval("incrit", now.incrit);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: /* STATE 7 - spin5.pml:37 - [enter[_pid] = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][7] = 1;
		(trpt+1)->bup.oval = ((int)now.enter[ Index(((int)((P0 *)this)->_pid), 5) ]);
		now.enter[ Index(((P0 *)this)->_pid, 5) ] = 0;
#ifdef VAR_RANGES
		logval("enter[_pid]", ((int)now.enter[ Index(((int)((P0 *)this)->_pid), 5) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: /* STATE 8 - spin5.pml:38 - [(!(ok[_pid]))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][8] = 1;
		if (!( !(((int)now.ok[ Index(((int)((P0 *)this)->_pid), 5) ]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 21: /* STATE 18 - spin5.pml:44 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][18] = 1;
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

