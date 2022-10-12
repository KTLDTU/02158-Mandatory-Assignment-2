	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC Coordinator */

	case 3: /* STATE 1 */
		;
		((P1 *)this)->_2_i = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 6: /* STATE 4 */
		;
		now.ok[ Index(((P1 *)this)->_pid, 5) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 8: /* STATE 6 */
		;
		now.ok[ Index(((P1 *)this)->_pid, 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 9: /* STATE 9 */
		;
		((P1 *)this)->_2_i = trpt->bup.oval;
		;
		goto R999;

	case 10: /* STATE 18 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC P */

	case 11: /* STATE 2 */
		;
		now.enter[ Index(((P0 *)this)->_pid, 5) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 13: /* STATE 4 */
		;
		now.incrit = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 15: /* STATE 6 */
		;
		now.incrit = trpt->bup.oval;
		;
		goto R999;

	case 16: /* STATE 16 */
		;
		p_restor(II);
		;
		;
		goto R999;
	}

