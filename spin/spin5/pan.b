	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM fair0 */
;
		;
		;
		;
		
	case 5: /* STATE 11 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC C */

	case 6: /* STATE 1 */
		;
		((P1 *)this)->_2_i = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 9: /* STATE 4 */
		;
		((P1 *)this)->_2_age[ Index(((P1 *)this)->_2_i, 12) ] = trpt->bup.oval;
		;
		goto R999;

	case 10: /* STATE 15 */
		;
		((P1 *)this)->_2_i = trpt->bup.ovals[2];
		((P1 *)this)->_2_maxIndex = trpt->bup.ovals[1];
	/* 0 */	((P1 *)this)->_2_maxIndex = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 11: /* STATE 15 */
		;
		((P1 *)this)->_2_i = trpt->bup.ovals[2];
		((P1 *)this)->_2_maxIndex = trpt->bup.ovals[1];
	/* 0 */	((P1 *)this)->_2_maxIndex = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 12: /* STATE 15 */
		;
		((P1 *)this)->_2_i = trpt->bup.oval;
		;
		goto R999;

	case 13: /* STATE 15 */
		;
		((P1 *)this)->_2_i = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 15: /* STATE 22 */
		;
		now.ok[ Index(((P1 *)this)->_2_maxIndex, 12) ] = trpt->bup.oval;
		;
		goto R999;

	case 16: /* STATE 23 */
		;
		((P1 *)this)->_2_age[ Index(((P1 *)this)->_2_maxIndex, 12) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 18: /* STATE 25 */
		;
		now.ok[ Index(((P1 *)this)->_2_maxIndex, 12) ] = trpt->bup.oval;
		;
		goto R999;

	case 19: /* STATE 31 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC P */

	case 20: /* STATE 2 */
		;
		now.enter[ Index(((P0 *)this)->_pid, 12) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 22: /* STATE 4 */
		;
		now.incrit = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 24: /* STATE 6 */
		;
		now.incrit = trpt->bup.oval;
		;
		goto R999;

	case 25: /* STATE 7 */
		;
		now.enter[ Index(((P0 *)this)->_pid, 12) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 27: /* STATE 18 */
		;
		p_restor(II);
		;
		;
		goto R999;
	}

