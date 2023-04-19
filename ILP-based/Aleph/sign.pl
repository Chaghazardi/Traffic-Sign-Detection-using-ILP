%Module Loading Starts
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:- use_module(aleph).
:- if(current_predicate(use_rendering/1)).
:- use_rendering(prolog).
:- endif.
:- aleph.
:-style_check(-discontiguous).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Module Loading ends

:- aleph_set(i,2).
%:- aleph_set(test_pos, 'pos_Art.f').
%:- aleph_set(test_pos, 'pos_Subtle.f').
%:- aleph_set(test_pos, 'pos_GTSRB.f').
:- aleph_set(test_pos, 'pos_example.f').
:- aleph_set(test_neg, 'neg_example.n').


:- modeh(1, traffic_sign(+sign, #stops)).
:- modeb(1, has_shape(+sign,#shape)).
:- modeb(1, has_color(+sign,#colour)).
:- modeb(1, has_number(+sign, -number)).
:- modeb(1, has_digits(+number,#nat)).
:- modeb(1, has_word(+sign,-word)).
:- modeb(1, nearly_match_letters(+word, #words)).
%modeb(1, nearly_match_letters(+word, 'stop')).
%modeb(1, has_letters(+word,#letters)).

 
 

:- determination(traffic_sign/2,has_shape/2).
:- determination(traffic_sign/2,has_color/2).
:- determination(traffic_sign/2,has_number/2).
:- determination(traffic_sign/2,has_digits/2).
:- determination(traffic_sign/2,has_word/2).
:- determination(traffic_sign/2,nearly_match_letters/2).
%determination(traffic_sign/2,has_letters/2).


:-begin_in_pos.  % Positive examples


traffic_sign(p1, stopsign).
traffic_sign(p2, stopsign).
%traffic_sign(p3, stopsign).
%traffic_sign(p4, stopsign).
%traffic_sign(p5, stopsign).
%traffic_sign(p6, stopsign).



:-end_in_pos. 

:-begin_in_neg.% Negative examples

traffic_sign(n1, stopsign).
traffic_sign(n2, stopsign).
%traffic_sign(n3, stopsign).
%traffic_sign(n4, stopsign).
%traffic_sign(n5, stopsign).
%traffic_sign(n6, stopsign).

:-end_in_neg.


:-begin_bg. 
% type definitions

stops(stopsign).

shape(octogon).  shape(other).  shape(t).  shape(o).  
shape(triangle). shape(circle). shape(diamond).  shape(rectangle). shape(pentagon). shape(hexagon).


colour(red). colour(white). colour(blue). colour(black). 
colour(green).  colour(yellow). 



words(stop). words(slow). words(down). words(work). words(go). 

% object(line). object(car). car(bike). object(arrow). object(man).
% object(animal). object(exclamation). object(rectangle). object(circle).
% object(bump). 
% object(snowflake).


sign(p1). sign(p2). sign(p3). sign(p4).  sign(p5). sign(p6). 

sign(n1). sign(n2). sign(n3). sign(n4). sign(n5). sign(n6). 




 
 
 % traffic_sign(n1, stop).
 has_color(n1,red).
 has_color(n1,green).
 has_color(n1,white).
 has_number(n1,n_n1_1).
 has_digits(n_n1_1,40).
 has_shape(n1,other).
 
 % traffic_sign(n10, stop).
 has_color(n10,red).
 has_color(n10,green).
 has_color(n10,black).
 has_color(n10,white).
 has_shape(n10,other).
 
 % traffic_sign(n11, stop).
 has_color(n11,red).
 has_color(n11,green).
 has_color(n11,white).
 has_shape(n11,circle).
 
 % traffic_sign(n12, stop).
 has_color(n12,red).
 has_color(n12,blue).
 has_color(n12,white).
 has_number(n12,n_n12_1).
 has_digits(n_n12_1,30).
 has_shape(n12,other).
 
 % traffic_sign(n13, stop).
 has_color(n13,red).
 has_color(n13,black).
 has_color(n13,white).
 has_shape(n13,circle).
 has_shape(n13,other).
 
 % traffic_sign(n14, stop).
 has_color(n14,red).
 has_color(n14,black).
 has_color(n14,white).
 has_shape(n14,triangle).
 has_shape(n14,other).
 has_shape(n14,hexagon).
 
 % traffic_sign(n15, stop).
 has_color(n15,red).
 has_color(n15,black).
 has_color(n15,white).
 has_number(n15,n_n15_1).
 has_digits(n_n15_1,0).
 has_shape(n15,other).
 has_shape(n15,circle).
 
 % traffic_sign(n16, stop).
 has_color(n16,red).
 has_color(n16,black).
 has_color(n16,white).
 has_shape(n16,triangle).
 has_shape(n16,other).
 has_shape(n16,hexagon).
 
 % traffic_sign(n2, stop).
 has_color(n2,red).
 has_color(n2,black).
 has_color(n2,white).
 has_number(n2,n_n2_3).
 has_digits(n_n2_3,7).
 has_word(n2,n2_1).
 nearly_match_letters(n2_1, give).
 has_word(n2,n2_2).
 nearly_match_letters(n2_2, way).
 has_shape(n2,triangle).
 has_shape(n2,other).
 
 % traffic_sign(n3, stop).
 has_color(n3,red).
 has_color(n3,green).
 has_color(n3,white).
 has_number(n3,n_n3_7).
 has_digits(n_n3_7,3).
 has_word(n3,n3_1).
 nearly_match_letters(n3_1, enter).
 has_shape(n3,pentagon).
 has_shape(n3,hexagon).
 has_shape(n3,other).
 
 % traffic_sign(n4, stop).
 has_color(n4,red).
 has_color(n4,green).
 has_color(n4,black).
 has_color(n4,white).
 has_shape(n4,triangle).
 has_shape(n4,other).
 
 % traffic_sign(n5, stop).
 has_color(n5,red).
 has_color(n5,black).
 has_color(n5,white).
 has_number(n5,n_n5_2).
 has_digits(n_n5_2,8).
 has_shape(n5,circle).
 has_shape(n5,hexagon).
 has_shape(n5,other).
 has_shape(n5,pentagon).
 
 % traffic_sign(n6, stop).
 has_color(n6,blue).
 has_color(n6,black).
 has_color(n6,white).
 has_shape(n6,other).
 has_shape(n6,circle).
 
 % traffic_sign(n7, stop).
 has_color(n7,red).
 has_color(n7,green).
 has_color(n7,white).
 has_number(n7,n_n7_1).
 has_digits(n_n7_1,60).
 has_shape(n7,other).
 has_shape(n7,circle).
 
 % traffic_sign(n8, stop).
 has_color(n8,red).
 has_color(n8,white).
 has_shape(n8,triangle).
 has_shape(n8,octagon).
 has_shape(n8,other).
 
 % traffic_sign(n9, stop).
 has_color(n9,red).
 has_color(n9,black).
 has_color(n9,white).
 has_shape(n9,other).
 has_shape(n9,rectangle).
 
 % traffic_sign(p1, stop).
 has_color(p1,red).
 has_color(p1,blue).
 has_color(p1,white).
 has_word(p1,p1_1).
 nearly_match_letters(p1_1, stop).
 has_shape(p1,other).
 has_shape(p1,octagon).
 
 % traffic_sign(p10, stop).
 has_color(p10,red).
 has_color(p10,black).
 has_color(p10,white).
 has_word(p10,p10_1).
 nearly_match_letters(p10_1, stop).
 has_shape(p10,other).
 has_shape(p10,octagon).
 
 % traffic_sign(p11, stop).
 has_color(p11,red).
 has_color(p11,green).
 has_color(p11,white).
 has_word(p11,p11_1).
 nearly_match_letters(p11_1, stop).
 has_shape(p11,other).
 has_shape(p11,octagon).
 
 % traffic_sign(p2, stop).
 has_color(p2,red).
 has_color(p2,green).
 has_color(p2,white).
 has_word(p2,p2_1).
 nearly_match_letters(p2_1, stop).
 has_shape(p2,other).
 has_shape(p2,octagon).
 
 % traffic_sign(p3, stop).
 has_color(p3,red).
 has_color(p3,green).
 has_color(p3,white).
 has_word(p3,p3_1).
 nearly_match_letters(p3_1, stop).
 has_shape(p3,other).
 
 % traffic_sign(p4, stop).
 has_color(p4,red).
 has_color(p4,green).
 has_color(p4,white).
 has_word(p4,p4_1).
 nearly_match_letters(p4_1, stop).
 has_shape(p4,other).
 has_shape(p4,octagon).
 
 % traffic_sign(p5, stop).
 has_color(p5,red).
 has_color(p5,white).
 has_word(p5,p5_1).
 nearly_match_letters(p5_1, stop).
 has_shape(p5,other).
 
 % traffic_sign(p6, stop).
 has_color(p6,red).
 has_color(p6,white).
 has_word(p6,p6_1).
 nearly_match_letters(p6_1, stop).
 has_shape(p6,other).
 has_shape(p6,octagon).
 
 % traffic_sign(p7, stop).
 has_color(p7,red).
 has_color(p7,white).
 has_word(p7,p7_1).
 nearly_match_letters(p7_1, stop).
 has_shape(p7,other).
 has_shape(p7,octagon).
 
 % traffic_sign(p8, stop).
 has_color(p8,red).
 has_color(p8,white).
 has_word(p8,p8_1).
 nearly_match_letters(p8_1, stop).
 has_shape(p8,other).
 
 % traffic_sign(p9, stop).
 has_color(p9,red).
 has_color(p9,black).
 has_word(p9,p9_1).
 nearly_match_letters(p9_1, stop).
 has_shape(p9,other).
 has_shape(p9,octagon).
 
 
  %  GTSRB
  
  
  
 
 % traffic_sign(pseudogerman-largebandwrectangles-basement_05ft_0deg, stop).
 has_color(pseudogerman-largebandwrectangles-basement_05ft_0deg,red).
 has_color(pseudogerman-largebandwrectangles-basement_05ft_0deg,black).
 has_color(pseudogerman-largebandwrectangles-basement_05ft_0deg,white).
 has_word(pseudogerman-largebandwrectangles-basement_05ft_0deg,pseudogerman-largebandwrectangles-basement_05ft_0deg_1).
 nearly_match_letters(pseudogerman-largebandwrectangles-basement_05ft_0deg_1, stop).
 has_shape(pseudogerman-largebandwrectangles-basement_05ft_0deg,other).
 has_shape(pseudogerman-largebandwrectangles-basement_05ft_0deg,circle).
 
 % traffic_sign(pseudogerman-largebandwrectangles-basement_05ft_15deg, stop).
 has_color(pseudogerman-largebandwrectangles-basement_05ft_15deg,red).
 has_color(pseudogerman-largebandwrectangles-basement_05ft_15deg,black).
 has_color(pseudogerman-largebandwrectangles-basement_05ft_15deg,white).
 has_word(pseudogerman-largebandwrectangles-basement_05ft_15deg,pseudogerman-largebandwrectangles-basement_05ft_15deg_1).
 nearly_match_letters(pseudogerman-largebandwrectangles-basement_05ft_15deg_1, stop).
 has_shape(pseudogerman-largebandwrectangles-basement_05ft_15deg,rectangle).
 has_shape(pseudogerman-largebandwrectangles-basement_05ft_15deg,other).
 
 % traffic_sign(pseudogerman-largebandwrectangles-basement_05ft_30deg, stop).
 has_color(pseudogerman-largebandwrectangles-basement_05ft_30deg,red).
 has_color(pseudogerman-largebandwrectangles-basement_05ft_30deg,black).
 has_color(pseudogerman-largebandwrectangles-basement_05ft_30deg,white).
 has_word(pseudogerman-largebandwrectangles-basement_05ft_30deg,pseudogerman-largebandwrectangles-basement_05ft_30deg_1).
 nearly_match_letters(pseudogerman-largebandwrectangles-basement_05ft_30deg_1, stop).
 has_shape(pseudogerman-largebandwrectangles-basement_05ft_30deg,pentagon).
 has_shape(pseudogerman-largebandwrectangles-basement_05ft_30deg,other).
 
 % traffic_sign(pseudogerman-largebandwrectangles-basement_05ft_45deg, stop).
 has_color(pseudogerman-largebandwrectangles-basement_05ft_45deg,red).
 has_color(pseudogerman-largebandwrectangles-basement_05ft_45deg,black).
 has_color(pseudogerman-largebandwrectangles-basement_05ft_45deg,white).
 has_word(pseudogerman-largebandwrectangles-basement_05ft_45deg,pseudogerman-largebandwrectangles-basement_05ft_45deg_1).
 nearly_match_letters(pseudogerman-largebandwrectangles-basement_05ft_45deg_1, stop).
 has_shape(pseudogerman-largebandwrectangles-basement_05ft_45deg,other).
 
 % traffic_sign(pseudogerman-largebandwrectangles-basement_05ft_60deg, stop).
 has_color(pseudogerman-largebandwrectangles-basement_05ft_60deg,red).
 has_color(pseudogerman-largebandwrectangles-basement_05ft_60deg,black).
 has_color(pseudogerman-largebandwrectangles-basement_05ft_60deg,white).
 has_word(pseudogerman-largebandwrectangles-basement_05ft_60deg,pseudogerman-largebandwrectangles-basement_05ft_60deg_1).
 nearly_match_letters(pseudogerman-largebandwrectangles-basement_05ft_60deg_1, stop).
 has_shape(pseudogerman-largebandwrectangles-basement_05ft_60deg,other).
 
 % traffic_sign(pseudogerman-largebandwrectangles-basement_10ft_0deg, stop).
 has_color(pseudogerman-largebandwrectangles-basement_10ft_0deg,red).
 has_color(pseudogerman-largebandwrectangles-basement_10ft_0deg,black).
 has_color(pseudogerman-largebandwrectangles-basement_10ft_0deg,white).
 has_word(pseudogerman-largebandwrectangles-basement_10ft_0deg,pseudogerman-largebandwrectangles-basement_10ft_0deg_1).
 nearly_match_letters(pseudogerman-largebandwrectangles-basement_10ft_0deg_1, stop).
 has_shape(pseudogerman-largebandwrectangles-basement_10ft_0deg,hexagon).
 has_shape(pseudogerman-largebandwrectangles-basement_10ft_0deg,other).
 
 % traffic_sign(pseudogerman-largebandwrectangles-basement_10ft_15deg, stop).
 has_color(pseudogerman-largebandwrectangles-basement_10ft_15deg,red).
 has_color(pseudogerman-largebandwrectangles-basement_10ft_15deg,black).
 has_color(pseudogerman-largebandwrectangles-basement_10ft_15deg,white).
 has_word(pseudogerman-largebandwrectangles-basement_10ft_15deg,pseudogerman-largebandwrectangles-basement_10ft_15deg_1).
 nearly_match_letters(pseudogerman-largebandwrectangles-basement_10ft_15deg_1, stop).
 has_shape(pseudogerman-largebandwrectangles-basement_10ft_15deg,other).
 
 % traffic_sign(pseudogerman-largebandwrectangles-basement_10ft_30deg, stop).
 has_color(pseudogerman-largebandwrectangles-basement_10ft_30deg,red).
 has_color(pseudogerman-largebandwrectangles-basement_10ft_30deg,black).
 has_color(pseudogerman-largebandwrectangles-basement_10ft_30deg,white).
 has_word(pseudogerman-largebandwrectangles-basement_10ft_30deg,pseudogerman-largebandwrectangles-basement_10ft_30deg_1).
 nearly_match_letters(pseudogerman-largebandwrectangles-basement_10ft_30deg_1, stop).
 has_shape(pseudogerman-largebandwrectangles-basement_10ft_30deg,other).
 
 % traffic_sign(pseudogerman-largebandwrectangles-basement_15ft_0deg, stop).
 has_color(pseudogerman-largebandwrectangles-basement_15ft_0deg,red).
 has_color(pseudogerman-largebandwrectangles-basement_15ft_0deg,black).
 has_color(pseudogerman-largebandwrectangles-basement_15ft_0deg,white).
 has_word(pseudogerman-largebandwrectangles-basement_15ft_0deg,pseudogerman-largebandwrectangles-basement_15ft_0deg_1).
 nearly_match_letters(pseudogerman-largebandwrectangles-basement_15ft_0deg_1, stop).
 has_shape(pseudogerman-largebandwrectangles-basement_15ft_0deg,other).
 
 % traffic_sign(pseudogerman-largebandwrectangles-basement_15ft_15deg, stop).
 has_color(pseudogerman-largebandwrectangles-basement_15ft_15deg,red).
 has_color(pseudogerman-largebandwrectangles-basement_15ft_15deg,black).
 has_color(pseudogerman-largebandwrectangles-basement_15ft_15deg,white).
 has_word(pseudogerman-largebandwrectangles-basement_15ft_15deg,pseudogerman-largebandwrectangles-basement_15ft_15deg_1).
 nearly_match_letters(pseudogerman-largebandwrectangles-basement_15ft_15deg_1, stop).
 has_shape(pseudogerman-largebandwrectangles-basement_15ft_15deg,other).
 
 % traffic_sign(pseudogerman-largebandwrectangles-basement_20ft_0deg, stop).
 has_color(pseudogerman-largebandwrectangles-basement_20ft_0deg,red).
 has_color(pseudogerman-largebandwrectangles-basement_20ft_0deg,black).
 has_color(pseudogerman-largebandwrectangles-basement_20ft_0deg,white).
 has_word(pseudogerman-largebandwrectangles-basement_20ft_0deg,pseudogerman-largebandwrectangles-basement_20ft_0deg_1).
 nearly_match_letters(pseudogerman-largebandwrectangles-basement_20ft_0deg_1, stop).
 has_shape(pseudogerman-largebandwrectangles-basement_20ft_0deg,other).
 
 % traffic_sign(pseudogerman-largebandwrectangles-basement_20ft_15deg, stop).
 has_color(pseudogerman-largebandwrectangles-basement_20ft_15deg,red).
 has_color(pseudogerman-largebandwrectangles-basement_20ft_15deg,black).
 has_color(pseudogerman-largebandwrectangles-basement_20ft_15deg,white).
 has_word(pseudogerman-largebandwrectangles-basement_20ft_15deg,pseudogerman-largebandwrectangles-basement_20ft_15deg_1).
 nearly_match_letters(pseudogerman-largebandwrectangles-basement_20ft_15deg_1, stop).
 has_shape(pseudogerman-largebandwrectangles-basement_20ft_15deg,other).
 
 % traffic_sign(pseudogerman-largebandwrectangles-basement_25ft_0deg, stop).
 has_color(pseudogerman-largebandwrectangles-basement_25ft_0deg,red).
 has_color(pseudogerman-largebandwrectangles-basement_25ft_0deg,black).
 has_color(pseudogerman-largebandwrectangles-basement_25ft_0deg,white).
 has_word(pseudogerman-largebandwrectangles-basement_25ft_0deg,pseudogerman-largebandwrectangles-basement_25ft_0deg_1).
 nearly_match_letters(pseudogerman-largebandwrectangles-basement_25ft_0deg_1, stop).
 has_shape(pseudogerman-largebandwrectangles-basement_25ft_0deg,other).
 
 % traffic_sign(pseudogerman-largebandwrectangles-basement_30ft_0deg, stop).
 has_color(pseudogerman-largebandwrectangles-basement_30ft_0deg,red).
 has_color(pseudogerman-largebandwrectangles-basement_30ft_0deg,black).
 has_color(pseudogerman-largebandwrectangles-basement_30ft_0deg,white).
 has_word(pseudogerman-largebandwrectangles-basement_30ft_0deg,pseudogerman-largebandwrectangles-basement_30ft_0deg_1).
 nearly_match_letters(pseudogerman-largebandwrectangles-basement_30ft_0deg_1, stop).
 
 % traffic_sign(pseudogerman-largebandwrectangles-basement_40ft_0deg, stop).
 has_color(pseudogerman-largebandwrectangles-basement_40ft_0deg,red).
 has_color(pseudogerman-largebandwrectangles-basement_40ft_0deg,black).
 has_color(pseudogerman-largebandwrectangles-basement_40ft_0deg,white).
 has_word(pseudogerman-largebandwrectangles-basement_40ft_0deg,pseudogerman-largebandwrectangles-basement_40ft_0deg_1).
 nearly_match_letters(pseudogerman-largebandwrectangles-basement_40ft_0deg_1, stop).
 
 
 %%%%% Love
 
 
 
 % traffic_sign(12, stop).
 has_color(12,red).
 has_color(12,blue).
 has_color(12,green).
 has_color(12,black).
 has_color(12,white).
 has_color(12,yellow).
 has_number(12,n_12_8).
 has_digits(n_12_8,0).
 has_number(12,n_12_16).
 has_digits(n_12_16,5).
 has_word(12,12_1).
 nearly_match_letters(12_1, enter).
 has_word(12,12_2).
 nearly_match_letters(12_2, stop).
 has_shape(12,other).
 has_shape(12,hexagon).
 
 % traffic_sign(13, stop).
 has_color(13,red).
 has_color(13,blue).
 has_color(13,green).
 has_color(13,black).
 has_color(13,white).
 has_color(13,yellow).
 has_number(13,n_13_7).
 has_digits(n_13_7,0).
 has_number(13,n_13_8).
 has_digits(n_13_8,4).
 has_number(13,n_13_13).
 has_digits(n_13_13,5).
 has_word(13,13_1).
 nearly_match_letters(13_1, stop).
 has_shape(13,other).
 has_shape(13,hexagon).
 
 % traffic_sign(14, stop).
 has_color(14,red).
 has_color(14,blue).
 has_color(14,green).
 has_color(14,black).
 has_color(14,white).
 has_color(14,yellow).
 has_number(14,n_14_7).
 has_digits(n_14_7,4).
 has_word(14,14_1).
 nearly_match_letters(14_1, stop).
 has_shape(14,other).
 has_shape(14,hexagon).
 
 % traffic_sign(15, stop).
 has_color(15,red).
 has_color(15,blue).
 has_color(15,green).
 has_color(15,black).
 has_color(15,white).
 has_color(15,yellow).
 has_number(15,n_15_5).
 has_digits(n_15_5,7).
 has_word(15,15_1).
 nearly_match_letters(15_1, stop).
 has_shape(15,other).
 has_shape(15,hexagon).
 
 % traffic_sign(1, stop).
 has_color(1,red).
 has_color(1,blue).
 has_color(1,green).
 has_color(1,black).
 has_color(1,white).
 has_color(1,yellow).
 has_number(1,n_1_2).
 has_digits(n_1_2,7).
 has_number(1,n_1_3).
 has_digits(n_1_3,5).
 has_number(1,n_1_6).
 has_digits(n_1_6,0).
 has_word(1,1_1).
 nearly_match_letters(1_1, stop).
 has_shape(1,other).
 has_shape(1,hexagon).
 has_shape(1,pentagon).
 has_shape(1,octagon).
 
 % traffic_sign(22, stop).
 has_color(22,red).
 has_color(22,blue).
 has_color(22,green).
 has_color(22,black).
 has_color(22,white).
 has_word(22,22_1).
 nearly_match_letters(22_1, stop).
 has_shape(22,other).
 
 % traffic_sign(23, stop).
 has_color(23,red).
 has_color(23,blue).
 has_color(23,green).
 has_color(23,black).
 has_color(23,white).
 has_word(23,23_1).
 nearly_match_letters(23_1, stop).
 has_shape(23,other).
 
 % traffic_sign(2, stop).
 has_color(2,red).
 has_color(2,green).
 has_color(2,black).
 has_color(2,white).
 has_word(2,2_1).
 nearly_match_letters(2_1, stop).
 has_shape(2,other).
 has_shape(2,octagon).
 
 % traffic_sign(32, stop).
 has_color(32,red).
 has_color(32,green).
 has_color(32,black).
 has_color(32,white).
 has_word(32,32_1).
 nearly_match_letters(32_1, stop).
 has_shape(32,other).
 
 % traffic_sign(3, stop).
 has_color(3,red).
 has_color(3,green).
 has_color(3,black).
 has_color(3,white).
 has_word(3,3_1).
 nearly_match_letters(3_1, stop).
 has_shape(3,other).
 has_shape(3,octagon).
 
 % traffic_sign(42, stop).
 has_color(42,red).
 has_color(42,black).
 has_color(42,white).
 has_word(42,42_1).
 nearly_match_letters(42_1, stop).
 has_shape(42,other).
 
 % traffic_sign(4, stop).
 has_color(4,red).
 has_color(4,green).
 has_color(4,black).
 has_color(4,white).
 has_word(4,4_1).
 nearly_match_letters(4_1, stop).
 has_shape(4,other).
 has_shape(4,octagon).
 
 % traffic_sign(5, stop).
 has_color(5,red).
 has_color(5,green).
 has_color(5,black).
 has_color(5,white).
 has_word(5,5_1).
 nearly_match_letters(5_1, stop).
 has_shape(5,other).
 has_shape(5,octagon).
 
 % traffic_sign(6, stop).
 has_color(6,red).
 has_color(6,green).
 has_color(6,black).
 has_color(6,white).
 has_word(6,6_1).
 nearly_match_letters(6_1, stop).
 has_shape(6,other).
 has_shape(6,octagon).
 
 % traffic_sign(7, stop).
 has_color(7,red).
 has_color(7,black).
 has_color(7,white).
 has_word(7,7_1).
 nearly_match_letters(7_1, stop).
 has_shape(7,other).
 has_shape(7,octagon).
 
 % traffic_sign(8, stop).
 has_color(8,red).
 has_color(8,black).
 has_color(8,white).
 has_word(8,8_1).
 nearly_match_letters(8_1, stop).
 has_shape(8,octagon).
 
 %%%% Subtle
 
 
 
 % traffic_sign(octnoise_10ft_0deg, stop).
 has_color(octnoise_10ft_0deg,red).
 has_color(octnoise_10ft_0deg,blue).
 has_color(octnoise_10ft_0deg,black).
 has_color(octnoise_10ft_0deg,white).
 has_word(octnoise_10ft_0deg,octnoise_10ft_0deg_1).
 nearly_match_letters(octnoise_10ft_0deg_1, stop).
 has_shape(octnoise_10ft_0deg,other).
 
 % traffic_sign(octnoise_10ft_15deg, stop).
 has_color(octnoise_10ft_15deg,red).
 has_color(octnoise_10ft_15deg,blue).
 has_color(octnoise_10ft_15deg,black).
 has_color(octnoise_10ft_15deg,white).
 has_word(octnoise_10ft_15deg,octnoise_10ft_15deg_1).
 nearly_match_letters(octnoise_10ft_15deg_1, stop).
 has_shape(octnoise_10ft_15deg,other).
 
 % traffic_sign(octnoise_10ft_30deg, stop).
 has_color(octnoise_10ft_30deg,red).
 has_color(octnoise_10ft_30deg,blue).
 has_color(octnoise_10ft_30deg,black).
 has_color(octnoise_10ft_30deg,white).
 has_word(octnoise_10ft_30deg,octnoise_10ft_30deg_1).
 nearly_match_letters(octnoise_10ft_30deg_1, stop).
 has_shape(octnoise_10ft_30deg,other).
 
 % traffic_sign(octnoise_15ft_0deg, stop).
 has_color(octnoise_15ft_0deg,red).
 has_color(octnoise_15ft_0deg,blue).
 has_color(octnoise_15ft_0deg,black).
 has_color(octnoise_15ft_0deg,white).
 has_word(octnoise_15ft_0deg,octnoise_15ft_0deg_1).
 nearly_match_letters(octnoise_15ft_0deg_1, stop).
 has_shape(octnoise_15ft_0deg,other).
 
 % traffic_sign(octnoise_15ft_15deg, stop).
 has_color(octnoise_15ft_15deg,red).
 has_color(octnoise_15ft_15deg,blue).
 has_color(octnoise_15ft_15deg,black).
 has_color(octnoise_15ft_15deg,white).
 has_word(octnoise_15ft_15deg,octnoise_15ft_15deg_1).
 nearly_match_letters(octnoise_15ft_15deg_1, stop).
 has_shape(octnoise_15ft_15deg,other).
 
 % traffic_sign(octnoise_20ft_0deg, stop).
 has_color(octnoise_20ft_0deg,red).
 has_color(octnoise_20ft_0deg,blue).
 has_color(octnoise_20ft_0deg,black).
 has_color(octnoise_20ft_0deg,white).
 has_word(octnoise_20ft_0deg,octnoise_20ft_0deg_1).
 nearly_match_letters(octnoise_20ft_0deg_1, stop).
 has_shape(octnoise_20ft_0deg,other).
 
 % traffic_sign(octnoise_20ft_15deg, stop).
 has_color(octnoise_20ft_15deg,red).
 has_color(octnoise_20ft_15deg,black).
 has_color(octnoise_20ft_15deg,white).
 has_word(octnoise_20ft_15deg,octnoise_20ft_15deg_1).
 nearly_match_letters(octnoise_20ft_15deg_1, stop).
 has_shape(octnoise_20ft_15deg,other).
 
 % traffic_sign(octnoise_25ft_0deg, stop).
 has_color(octnoise_25ft_0deg,red).
 has_color(octnoise_25ft_0deg,black).
 has_word(octnoise_25ft_0deg,octnoise_25ft_0deg_1).
 nearly_match_letters(octnoise_25ft_0deg_1, stop).
 
 % traffic_sign(octnoise_30ft_0deg, stop).
 has_color(octnoise_30ft_0deg,red).
 has_color(octnoise_30ft_0deg,black).
 has_word(octnoise_30ft_0deg,octnoise_30ft_0deg_1).
 nearly_match_letters(octnoise_30ft_0deg_1, stop).
 
 % traffic_sign(octnoise_40ft_0deg, stop).
 has_color(octnoise_40ft_0deg,red).
 has_color(octnoise_40ft_0deg,black).
 has_word(octnoise_40ft_0deg,octnoise_40ft_0deg_1).
 nearly_match_letters(octnoise_40ft_0deg_1, stop).
 
 % traffic_sign(octnoise_5ft_0deg, stop).
 has_color(octnoise_5ft_0deg,red).
 has_color(octnoise_5ft_0deg,blue).
 has_color(octnoise_5ft_0deg,black).
 has_color(octnoise_5ft_0deg,white).
 has_number(octnoise_5ft_0deg,n_octnoise_5ft_0deg_2).
 has_digits(n_octnoise_5ft_0deg_2,0).
 has_word(octnoise_5ft_0deg,octnoise_5ft_0deg_1).
 nearly_match_letters(octnoise_5ft_0deg_1, stop).
 has_shape(octnoise_5ft_0deg,other).
 
 % traffic_sign(octnoise_5ft_15deg, stop).
 has_color(octnoise_5ft_15deg,red).
 has_color(octnoise_5ft_15deg,blue).
 has_color(octnoise_5ft_15deg,black).
 has_color(octnoise_5ft_15deg,white).
 has_word(octnoise_5ft_15deg,octnoise_5ft_15deg_1).
 nearly_match_letters(octnoise_5ft_15deg_1, stop).
 has_shape(octnoise_5ft_15deg,other).
 
 % traffic_sign(octnoise_5ft_30deg, stop).
 has_color(octnoise_5ft_30deg,red).
 has_color(octnoise_5ft_30deg,blue).
 has_color(octnoise_5ft_30deg,black).
 has_color(octnoise_5ft_30deg,white).
 has_word(octnoise_5ft_30deg,octnoise_5ft_30deg_1).
 nearly_match_letters(octnoise_5ft_30deg_1, stop).
 has_shape(octnoise_5ft_30deg,other).
 
 % traffic_sign(octnoise_5ft_45deg, stop).
 has_color(octnoise_5ft_45deg,red).
 has_color(octnoise_5ft_45deg,blue).
 has_color(octnoise_5ft_45deg,black).
 has_color(octnoise_5ft_45deg,white).
 has_word(octnoise_5ft_45deg,octnoise_5ft_45deg_1).
 nearly_match_letters(octnoise_5ft_45deg_1, stop).
 has_shape(octnoise_5ft_45deg,other).
 
 % traffic_sign(octnoise_5ft_60deg, stop).
 has_color(octnoise_5ft_60deg,red).
 has_color(octnoise_5ft_60deg,blue).
 has_color(octnoise_5ft_60deg,black).
 has_color(octnoise_5ft_60deg,white).
 has_word(octnoise_5ft_60deg,octnoise_5ft_60deg_1).
 nearly_match_letters(octnoise_5ft_60deg_1, stop).
 has_shape(octnoise_5ft_60deg,other).
 
 
 
 
 
:-end_bg.

