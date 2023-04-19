:- use_module('metagol').
:- multifile body_pred/1.
:- multifile head_pred/1.	

%%%%%%%%%% tell metagol to use the BK %%%%%%%%%% 

body_pred(has_shape/2).
body_pred(has_color/2).
body_pred(has_number/2).
body_pred(has_digits/2).
body_pred(has_word/2).
body_pred(font_case/2).
body_pred(nearly_match_letters/2).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%% metarules %%%%%%%%%%%%%%%%%%%%
metarule([P,Q], [P,A],[[Q,A]]).
metarule([P,Q,R], [P,A], [[Q,A],[R,A]]).
metarule([P,Q,R,B], [P,A], [[Q,A,B],[R,B]]).
metarule([P,Q], [P,A,B], [[Q,A,B]]).
metarule([P,Q,R], [P,A,B], [[Q,A,B],[R,B]]).
metarule([P,Q,X], [P,A], [[Q,A,X]]).
metarule([P,Q,X,B], [P,A,B], [[Q,A,B,X]]).
metarule([P,Q,R,B], [P,A,B], [[Q,A,C],[R,C,D]]).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%% background knowledge %%%%%%%%%%%%%%



shape(octogon).  shape(other).  shape(t).  shape(o).  
shape(triangle). shape(circle). shape(diamond).  shape(rectangle). shape(pentagon). shape(hexagon).

colour(red). colour(white). colour(blue). colour(black). 
colour(green).  colour(yellow).

case(lowercase). case(uppercase). case(mixed).

words(stop). words(slow). words(down). words(work). words(go).  words(give).  words(way).  words(enter).

sign(stopsign). sign(gosign).



sign(p1). sign(p2). sign(p3). sign(p4).  sign(p5). sign(p6). 
sign(p1). sign(p2). sign(p3). sign(p4).  sign(p5).  
sign(n1). sign(n2). sign(n3). sign(n4). sign(n5). sign(n6). 
sign(n1). sign(n2). sign(n3). sign(n4). sign(n5). 


% In the name of Allah


 
 % traffic_sign(n1, stop).
 has_color(n1,red).
 has_color(n1,white).
 has_number(n1,n1_1).
 has_digits(n1_1,40).
 has_shape(n1,other).
 
 % traffic_sign(n10, stop).
 has_color(n10,red).
 has_color(n10,black).
 has_color(n10,white).
 has_shape(n10,other).
 
 % traffic_sign(n11, stop).
 has_color(n11,red).
 has_color(n11,white).
 has_shape(n11,circle).
 
 % traffic_sign(n12, stop).
 has_color(n12,red).
 has_color(n12,black).
 has_color(n12,white).
 has_number(n12,n12_1).
 has_digits(n12_1,30).
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
 has_number(n15,n15_1).
 has_digits(n15_1,0).
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
 has_word(n2,n2_1).
 nearly_match_letters(n2_1, give).
 font_case(n2_1, uppercase).
 has_word(n2,n2_2).
 nearly_match_letters(n2_2, way).
 font_case(n2_2, uppercase).
 has_shape(n2,triangle).
 has_shape(n2,other).
 
 % traffic_sign(n3, stop).
 has_color(n3,red).
 has_color(n3,white).
 has_word(n3,n3_2).
 nearly_match_letters(n3_2, not).
 font_case(n3_2, uppercase).
 has_word(n3,n3_3).
 nearly_match_letters(n3_3, enter).
 font_case(n3_3, uppercase).
 has_shape(n3,pentagon).
 has_shape(n3,hexagon).
 has_shape(n3,other).
 
 % traffic_sign(n4, stop).
 has_color(n4,red).
 has_color(n4,black).
 has_color(n4,white).
 has_shape(n4,triangle).
 has_shape(n4,other).
 
 % traffic_sign(n5, stop).
 has_color(n5,red).
 has_color(n5,black).
 has_color(n5,white).
 has_shape(n5,circle).
 has_shape(n5,other).
 
 % traffic_sign(n6, stop).
 has_color(n6,blue).
 has_color(n6,white).
 has_shape(n6,other).
 has_shape(n6,circle).
 
 % traffic_sign(n7, stop).
 has_color(n7,red).
 has_color(n7,white).
 has_number(n7,n7_1).
 has_digits(n7_1,60).
 has_shape(n7,circle).
 has_shape(n7,other).
 
 % traffic_sign(n8, stop).
 has_color(n8,red).
 has_color(n8,white).
 has_shape(n8,triangle).
 has_shape(n8,octagon).
 has_shape(n8,other).
 
 % traffic_sign(n9, stop).
 has_color(n9,red).
 has_color(n9,white).
 has_shape(n9,other).
 has_shape(n9,rectangle).
 
 % traffic_sign(p1, stop).
 has_color(p1,red).
 has_color(p1,white).
 has_word(p1,p1_1).
 nearly_match_letters(p1_1, stop).
 font_case(p1_1, uppercase).
 has_shape(p1,other).
 has_shape(p1,octagon).
 
 % traffic_sign(p10, stop).
 has_color(p10,red).
 has_color(p10,black).
 has_color(p10,white).
 has_word(p10,p10_1).
 nearly_match_letters(p10_1, stop).
 font_case(p10_1, uppercase).
 has_shape(p10,other).
 
 % traffic_sign(p11, stop).
 has_color(p11,red).
 has_color(p11,white).
 has_word(p11,p11_1).
 nearly_match_letters(p11_1, stop).
 font_case(p11_1, uppercase).
 has_shape(p11,other).
 has_shape(p11,octagon).
 
 % traffic_sign(p2, stop).
 has_color(p2,red).
 has_color(p2,white).
 has_word(p2,p2_1).
 nearly_match_letters(p2_1, stop).
 font_case(p2_1, mixed).
 has_shape(p2,other).
 has_shape(p2,octagon).
 
 % traffic_sign(p3, stop).
 has_color(p3,red).
 has_color(p3,white).
 has_word(p3,p3_1).
 nearly_match_letters(p3_1, stop).
 font_case(p3_1, uppercase).
 has_shape(p3,other).
 
 % traffic_sign(p4, stop).
 has_color(p4,red).
 has_color(p4,green).
 has_color(p4,white).
 has_word(p4,p4_1).
 nearly_match_letters(p4_1, stop).
 font_case(p4_1, uppercase).
 has_shape(p4,other).
 has_shape(p4,octagon).
 
 % traffic_sign(p5, stop).
 has_color(p5,red).
 has_color(p5,white).
 has_word(p5,p5_1).
 nearly_match_letters(p5_1, stop).
 font_case(p5_1, uppercase).
 has_shape(p5,other).
 
 % traffic_sign(p6, stop).
 has_color(p6,red).
 has_color(p6,white).
 has_word(p6,p6_1).
 nearly_match_letters(p6_1, stop).
 font_case(p6_1, uppercase).
 has_shape(p6,other).
 has_shape(p6,octagon).
 
 % traffic_sign(p7, stop).
 has_color(p7,red).
 has_color(p7,black).
 has_color(p7,white).
 has_word(p7,p7_1).
 nearly_match_letters(p7_1, stop).
 font_case(p7_1, uppercase).
 has_shape(p7,other).
 
 % traffic_sign(p8, stop).
 has_color(p8,red).
 has_word(p8,p8_1).
 nearly_match_letters(p8_1, stop).
 font_case(p8_1, uppercase).
 has_shape(p8,other).
 
 % traffic_sign(p9, stop).
 has_color(p9,red).
 has_word(p9,p9_1).
 nearly_match_letters(p9_1, stop).
 font_case(p9_1, uppercase).
 has_shape(p9,other). 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % :-
  %  Pos = [
  %      traffic_sign(p1, stopsign),
  %      traffic_sign(p2, stopsign),
  %      traffic_sign(p3, stopsign),
  %      traffic_sign(p4, stopsign),
  %     traffic_sign(p5, stopsign)
  %  ],
  %  Neg = [
  %      traffic_sign(n1, stopsign),
  %      traffic_sign(n2, stopsign),
  %      traffic_sign(n3, stopsign),
  %      traffic_sign(n4, stopsign),
  %      traffic_sign(n5, stopsign)
  %  ],
  %  learn(Pos,Neg).
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 :-
    Pos = [
        traffic_sign(p1, stopsign)

    ],
    Neg = [
        traffic_sign(n3, stopsign)
    ],
    learn(Pos,Neg).
