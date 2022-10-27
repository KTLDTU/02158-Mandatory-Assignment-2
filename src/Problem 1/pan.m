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
	case 6: /* STATE 1 - spin5.pml:54 - [i = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][1] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->_2_i;
		((P1 *)this)->_2_i = 0;
#ifdef VAR_RANGES
		logval("Coordinator:i", ((P1 *)this)->_2_i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 7: /* STATE 2 - spin5.pml:54 - [((i<=(3-1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][2] = 1;
		if (!((((P1 *)this)->_2_i<=(3-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: /* STATE 3 - spin5.pml:56 - [(enter[i])] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][3] = 1;
		if (!(((int)now.enter[ Index(((P1 *)this)->_2_i, 3) ])))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: /* STATE 4 - spin5.pml:56 - [age[i] = (age[i]+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][4] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->_2_age[ Index(((P1 *)this)->_2_i, 3) ];
		((P1 *)this)->_2_age[ Index(((P1 *)this)->_2_i, 3) ] = (((P1 *)this)->_2_age[ Index(((P1 *)this)->_2_i, 3) ]+1);
#ifdef VAR_RANGES
		logval("Coordinator:age[Coordinator:i]", ((P1 *)this)->_2_age[ Index(((P1 *)this)->_2_i, 3) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 10: /* STATE 5 - spin5.pml:59 - [((maxIndex==-(1)))] (18:0:3 - 1) */
		IfNotBlocked
		reached[1][5] = 1;
		if (!((((P1 *)this)->_2_maxIndex== -(1))))
			continue;
		/* dead 1: _2_maxIndex */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->_2_maxIndex;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->_2_maxIndex = 0;
		/* merge: maxIndex = i(18, 6, 18) */
		reached[1][6] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)this)->_2_maxIndex;
		((P1 *)this)->_2_maxIndex = ((P1 *)this)->_2_i;
#ifdef VAR_RANGES
		logval("Coordinator:maxIndex", ((P1 *)this)->_2_maxIndex);
#endif
		;
		/* merge: .(goto)(18, 12, 18) */
		reached[1][12] = 1;
		;
		/* merge: .(goto)(18, 14, 18) */
		reached[1][14] = 1;
		;
		/* merge: i = (i+1)(18, 15, 18) */
		reached[1][15] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)this)->_2_i;
		((P1 *)this)->_2_i = (((P1 *)this)->_2_i+1);
#ifdef VAR_RANGES
		logval("Coordinator:i", ((P1 *)this)->_2_i);
#endif
		;
		/* merge: .(goto)(0, 19, 18) */
		reached[1][19] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 11: /* STATE 7 - spin5.pml:60 - [(((maxIndex!=-(1))&&(age[maxIndex]<age[i])))] (18:0:3 - 1) */
		IfNotBlocked
		reached[1][7] = 1;
		if (!(((((P1 *)this)->_2_maxIndex!= -(1))&&(((P1 *)this)->_2_age[ Index(((P1 *)this)->_2_maxIndex, 3) ]<((P1 *)this)->_2_age[ Index(((P1 *)this)->_2_i, 3) ]))))
			continue;
		/* dead 1: _2_maxIndex */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->_2_maxIndex;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->_2_maxIndex = 0;
		/* merge: maxIndex = i(18, 8, 18) */
		reached[1][8] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)this)->_2_maxIndex;
		((P1 *)this)->_2_maxIndex = ((P1 *)this)->_2_i;
#ifdef VAR_RANGES
		logval("Coordinator:maxIndex", ((P1 *)this)->_2_maxIndex);
#endif
		;
		/* merge: .(goto)(18, 12, 18) */
		reached[1][12] = 1;
		;
		/* merge: .(goto)(18, 14, 18) */
		reached[1][14] = 1;
		;
		/* merge: i = (i+1)(18, 15, 18) */
		reached[1][15] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)this)->_2_i;
		((P1 *)this)->_2_i = (((P1 *)this)->_2_i+1);
#ifdef VAR_RANGES
		logval("Coordinator:i", ((P1 *)this)->_2_i);
#endif
		;
		/* merge: .(goto)(0, 19, 18) */
		reached[1][19] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 12: /* STATE 10 - spin5.pml:61 - [(1)] (18:0:1 - 1) */
		IfNotBlocked
		reached[1][10] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(18, 12, 18) */
		reached[1][12] = 1;
		;
		/* merge: .(goto)(18, 14, 18) */
		reached[1][14] = 1;
		;
		/* merge: i = (i+1)(18, 15, 18) */
		reached[1][15] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->_2_i;
		((P1 *)this)->_2_i = (((P1 *)this)->_2_i+1);
#ifdef VAR_RANGES
		logval("Coordinator:i", ((P1 *)this)->_2_i);
#endif
		;
		/* merge: .(goto)(0, 19, 18) */
		reached[1][19] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 13: /* STATE 15 - spin5.pml:54 - [i = (i+1)] (0:18:1 - 5) */
		IfNotBlocked
		reached[1][15] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->_2_i;
		((P1 *)this)->_2_i = (((P1 *)this)->_2_i+1);
#ifdef VAR_RANGES
		logval("Coordinator:i", ((P1 *)this)->_2_i);
#endif
		;
		/* merge: .(goto)(0, 19, 18) */
		reached[1][19] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 14: /* STATE 21 - spin5.pml:67 - [((maxIndex>-(1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][21] = 1;
		if (!((((P1 *)this)->_2_maxIndex> -(1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 15: /* STATE 22 - spin5.pml:67 - [ok[maxIndex] = 1] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][22] = 1;
		(trpt+1)->bup.oval = ((int)now.ok[ Index(((P1 *)this)->_2_maxIndex, 3) ]);
		now.ok[ Index(((P1 *)this)->_2_maxIndex, 3) ] = 1;
#ifdef VAR_RANGES
		logval("ok[Coordinator:maxIndex]", ((int)now.ok[ Index(((P1 *)this)->_2_maxIndex, 3) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: /* STATE 23 - spin5.pml:68 - [age[maxIndex] = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][23] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->_2_age[ Index(((P1 *)this)->_2_maxIndex, 3) ];
		((P1 *)this)->_2_age[ Index(((P1 *)this)->_2_maxIndex, 3) ] = 0;
#ifdef VAR_RANGES
		logval("Coordinator:age[Coordinator:maxIndex]", ((P1 *)this)->_2_age[ Index(((P1 *)this)->_2_maxIndex, 3) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: /* STATE 24 - spin5.pml:69 - [(!(enter[maxIndex]))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][24] = 1;
		if (!( !(((int)now.enter[ Index(((P1 *)this)->_2_maxIndex, 3) ]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 18: /* STATE 25 - spin5.pml:69 - [ok[maxIndex] = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][25] = 1;
		(trpt+1)->bup.oval = ((int)now.ok[ Index(((P1 *)this)->_2_maxIndex, 3) ]);
		now.ok[ Index(((P1 *)this)->_2_maxIndex, 3) ] = 0;
#ifdef VAR_RANGES
		logval("ok[Coordinator:maxIndex]", ((int)now.ok[ Index(((P1 *)this)->_2_maxIndex, 3) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: /* STATE 31 - spin5.pml:72 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][31] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC P */
	case 20: /* STATE 2 - spin5.pml:27 - [enter[_pid] = 1] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][2] = 1;
		(trpt+1)->bup.oval = ((int)now.enter[ Index(((int)((P0 *)this)->_pid), 3) ]);
		now.enter[ Index(((P0 *)this)->_pid, 3) ] = 1;
#ifdef VAR_RANGES
		logval("enter[_pid]", ((int)now.enter[ Index(((int)((P0 *)this)->_pid), 3) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 21: /* STATE 3 - spin5.pml:28 - [(ok[_pid])] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][3] = 1;
		if (!(((int)now.ok[ Index(((int)((P0 *)this)->_pid), 3) ])))
			continue;
		_m = 3; goto P999; /* 0 */
	case 22: /* STATE 4 - spin5.pml:31 - [incrit = (incrit+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][4] = 1;
		(trpt+1)->bup.oval = now.incrit;
		now.incrit = (now.incrit+1);
#ifdef VAR_RANGES
		logval("incrit", now.incrit);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 23: /* STATE 5 - spin5.pml:32 - [assert((incrit==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][5] = 1;
		spin_assert((now.incrit==1), "(incrit==1)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 24: /* STATE 6 - spin5.pml:33 - [incrit = (incrit-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][6] = 1;
		(trpt+1)->bup.oval = now.incrit;
		now.incrit = (now.incrit-1);
#ifdef VAR_RANGES
		logval("incrit", now.incrit);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 25: /* STATE 7 - spin5.pml:37 - [enter[_pid] = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][7] = 1;
		(trpt+1)->bup.oval = ((int)now.enter[ Index(((int)((P0 *)this)->_pid), 3) ]);
		now.enter[ Index(((P0 *)this)->_pid, 3) ] = 0;
#ifdef VAR_RANGES
		logval("enter[_pid]", ((int)now.enter[ Index(((int)((P0 *)this)->_pid), 3) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 26: /* STATE 8 - spin5.pml:38 - [(!(ok[_pid]))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][8] = 1;
		if (!( !(((int)now.ok[ Index(((int)((P0 *)this)->_pid), 3) ]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 27: /* STATE 18 - spin5.pml:44 - [-end-] (0:0:0 - 1) */
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

