%%%%%%%%%% tell metagol to use the BK %%%%%%%%%% 
body_pred(has_shape/2).
body_pred(has_color/2).
body_pred(has_number/2).
body_pred(has_digits/2).
body_pred(has_word/2).
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
%metarule([P,Q,R,B], [P,A,B], [[Q,A,C],[R,C,D]]).
metarule([P,Q,R,B,D], [P,A,B], [[Q,A,C],[R,C,D]]).
