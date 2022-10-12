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

		 /* PROC Coordinator */
	case 3: /* STATE 1 - spin5.pml:51 - [i = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][1] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->_2_i;
		((P1 *)this)->_2_i = 0;
#ifdef VAR_RANGES
		logval("Coordinator:i", ((P1 *)this)->_2_i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 4: /* STATE 2 - spin5.pml:51 - [((i<=(5-1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][2] = 1;
		if (!((((P1 *)this)->_2_i<=(5-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: /* STATE 3 - spin5.pml:53 - [(((enter[i]==1)&&(i!=_pid)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][3] = 1;
		if (!(((((int)now.enter[ Index(((P1 *)this)->_2_i, 5) ])==1)&&(((P1 *)this)->_2_i!=((int)((P1 *)this)->_pid)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: /* STATE 4 - spin5.pml:53 - [ok[_pid] = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][4] = 1;
		(trpt+1)->bup.oval = ((int)now.ok[ Index(((int)((P1 *)this)->_pid), 5) ]);
		now.ok[ Index(((P1 *)this)->_pid, 5) ] = 0;
#ifdef VAR_RANGES
		logval("ok[_pid]", ((int)now.ok[ Index(((int)((P1 *)this)->_pid), 5) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 7: /* STATE 5 - spin5.pml:54 - [(!(((enter[i]==1)&&(i!=_pid))))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][5] = 1;
		if (!( !(((((int)now.enter[ Index(((P1 *)this)->_2_i, 5) ])==1)&&(((P1 *)this)->_2_i!=((int)((P1 *)this)->_pid))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: /* STATE 6 - spin5.pml:54 - [ok[_pid] = 1] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][6] = 1;
		(trpt+1)->bup.oval = ((int)now.ok[ Index(((int)((P1 *)this)->_pid), 5) ]);
		now.ok[ Index(((P1 *)this)->_pid, 5) ] = 1;
#ifdef VAR_RANGES
		logval("ok[_pid]", ((int)now.ok[ Index(((int)((P1 *)this)->_pid), 5) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 9: /* STATE 9 - spin5.pml:51 - [i = (i+1)] (0:12:1 - 3) */
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
	case 10: /* STATE 18 - spin5.pml:58 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][18] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC P */
	case 11: /* STATE 2 - spin5.pml:27 - [enter[_pid] = 1] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][2] = 1;
		(trpt+1)->bup.oval = ((int)now.enter[ Index(((int)((P0 *)this)->_pid), 5) ]);
		now.enter[ Index(((P0 *)this)->_pid, 5) ] = 1;
#ifdef VAR_RANGES
		logval("enter[_pid]", ((int)now.enter[ Index(((int)((P0 *)this)->_pid), 5) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 12: /* STATE 3 - spin5.pml:28 - [(ok[_pid])] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][3] = 1;
		if (!(((int)now.ok[ Index(((int)((P0 *)this)->_pid), 5) ])))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: /* STATE 4 - spin5.pml:31 - [incrit = (incrit+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][4] = 1;
		(trpt+1)->bup.oval = now.incrit;
		now.incrit = (now.incrit+1);
#ifdef VAR_RANGES
		logval("incrit", now.incrit);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: /* STATE 5 - spin5.pml:32 - [assert((incrit==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][5] = 1;
		spin_assert((now.incrit==1), "(incrit==1)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 15: /* STATE 6 - spin5.pml:33 - [incrit = (incrit-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][6] = 1;
		(trpt+1)->bup.oval = now.incrit;
		now.incrit = (now.incrit-1);
#ifdef VAR_RANGES
		logval("incrit", now.incrit);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: /* STATE 16 - spin5.pml:43 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][16] = 1;
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

