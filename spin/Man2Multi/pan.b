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
;
		
	case 10: /* STATE 18 */
		goto R999;

	case 11: /* STATE 15 */
		;
		now.down = trpt->bup.oval;
		;
		goto R999;
;
		
	case 12: /* STATE 16 */
		goto R999;

	case 13: /* STATE 20 */
		;
		now.downSem = trpt->bup.oval;
		;
		goto R999;

	case 14: /* STATE 24 */
		;
		now.upSem = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 16: /* STATE 30 */
		;
		now.up = trpt->bup.ovals[1];
		now.downSem = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 17: /* STATE 35 */
		goto R999;

	case 18: /* STATE 32 */
		;
		now.up = trpt->bup.oval;
		;
		goto R999;
;
		
	case 19: /* STATE 33 */
		goto R999;

	case 20: /* STATE 37 */
		;
		now.upSem = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 22: /* STATE 42 */
		;
		now.down = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 24: /* STATE 44 */
		;
		now.upSem = trpt->bup.oval;
		;
		goto R999;
;
		
	case 25: /* STATE 49 */
		goto R999;
;
		
	case 26: /* STATE 47 */
		goto R999;

	case 27: /* STATE 52 */
		;
		now.up = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 29: /* STATE 54 */
		;
		now.downSem = trpt->bup.oval;
		;
		goto R999;
;
		
	case 30: /* STATE 59 */
		goto R999;
;
		
	case 31: /* STATE 57 */
		goto R999;

	case 32: /* STATE 66 */
		;
		p_restor(II);
		;
		;
		goto R999;
	}

