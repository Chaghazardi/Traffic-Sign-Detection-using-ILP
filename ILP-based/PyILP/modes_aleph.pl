

:- aleph_set(i,2).
:- aleph_set(minpos,1).



:- modeh(1, traffic_sign(+sign, #stops)).
:- modeb(1, has_shape(+sign,#shape)).
:- modeb(1, has_color(+sign,#colour)).
:- modeb(1, has_number(+sign, -number)).
:- modeb(1, has_digits(+number,#nat)).
:- modeb(1, has_word(+sign,-word)).
:- modeb(1, nearly_match_letters(+word, #words)).

 
 

:- determination(traffic_sign/2,has_shape/2).
:- determination(traffic_sign/2,has_color/2).
:- determination(traffic_sign/2,has_number/2).
:- determination(traffic_sign/2,has_digits/2).
:- determination(traffic_sign/2,has_word/2).
:- determination(traffic_sign/2,nearly_match_letters/2).



