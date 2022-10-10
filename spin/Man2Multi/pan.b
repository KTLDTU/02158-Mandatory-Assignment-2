	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC Car */
;
		;
		;
		;
		;
		;
		;
		;
		
	case 7: /* STATE 7 */
		;
		now.downSem = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 9: /* STATE 13 */
		;
		now.down = trpt->bup.ovals[1];
		now.upSem = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 10: /* STATE 16 */
		;
		now.down = trpt->bup.oval;
		;
		goto R999;

	case 11: /* STATE 20 */
		;
		now.downSem = trpt->bup.oval;
		;
		goto R999;

	case 12: /* STATE 24 */
		;
		now.upSem = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 14: /* STATE 30 */
		;
		now.up = trpt->bup.ovals[1];
		now.downSem = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 15: /* STATE 33 */
		;
		now.up = trpt->bup.oval;
		;
		goto R999;

	case 16: /* STATE 37 */
		;
		now.upSem = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 18: /* STATE 42 */
		;
		now.down = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 20: /* STATE 44 */
		;
		now.upSem = trpt->bup.oval;
		;
		goto R999;

	case 21: /* STATE 51 */
		;
		now.up = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 23: /* STATE 53 */
		;
		now.downSem = trpt->bup.oval;
		;
		goto R999;

	case 24: /* STATE 64 */
		;
		p_restor(II);
		;
		;
		goto R999;
	}

