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

		 /* PROC Coordinator */

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
		now.ok[ Index(((P1 *)this)->_2_i, 5) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 11: /* STATE 6 */
		;
		now.ok[ Index(((P1 *)this)->_2_i, 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 12: /* STATE 9 */
		;
		((P1 *)this)->_2_i = trpt->bup.oval;
		;
		goto R999;

	case 13: /* STATE 18 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC P */

	case 14: /* STATE 2 */
		;
		now.enter[ Index(((P0 *)this)->_pid, 5) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 16: /* STATE 4 */
		;
		now.incrit = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 18: /* STATE 6 */
		;
		now.incrit = trpt->bup.oval;
		;
		goto R999;

	case 19: /* STATE 7 */
		;
		now.enter[ Index(((P0 *)this)->_pid, 5) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 21: /* STATE 18 */
		;
		p_restor(II);
		;
		;
		goto R999;
	}

