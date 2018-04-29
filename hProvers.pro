% supports also negation seen as A->false

:- op(425,  fy,  ~ ).

% classicall logic propositional prover
% using Glivenko's double negation translation

clprove(T0):-dneg(T0,T),cprove(T).

cprove(T0):-
 must_be(ground,T0),
 expand_neg(T0,T),
 ljc(T,[]),
 !.

ljc(_,Vs):-memberchk(false,Vs),!.
ljc(A,Vs):-memberchk(A,Vs),!.
ljc((A->B),Vs1):-!,add_new(A,Vs1,Vs2),ljc(B,Vs2). 
ljc(G,Vs1):- % atomic(G),
  select((A->B),Vs1,Vs2),
  ljc_imp(A,B,Vs2),
  !,
  add_new(B,Vs2,Vs3),
  ljc(G,Vs3).

ljc_imp(A,_,Vs):-integer(A),!,memberchk(A,Vs).   
ljc_imp((C->D),B,Vs1):- 
   add_new((D->B),Vs1,Vs2),
   ljc((C->D),Vs2).

expand_neg(A,R):-atomic(A),!,R=A.
expand_neg(~A,R):-!,expand_neg(A,B),R=(B->false).
expand_neg((A->B),(X->Y)):-expand_neg(A,X),expand_neg(B,Y).


% assumes all hypotheses at once
% while avoiding duplicates

hprove(T):-ljh(T,[]),!.

ljh(A,Vs):-memberchk(A,Vs),!.
ljh(As,Vs1):-As=(_->_),!,
  assume_all(As,B,Vs1,Vs2),
  ljh(B,Vs2). 
ljh(G,Vs1):- % atomic(G),
  select((A->B),Vs1,Vs2),
  ljh_imp(A,B,Vs2),
  !,
  add_new(B,Vs2,Vs3),
  ljh(G,Vs3).

ljh_imp(A,_,Vs):-atomic(A),!,memberchk(A,Vs).   
ljh_imp((C->D),B,Vs1):-
   add_new((D->B),Vs1,Vs2),
   ljh((C->D),Vs2).
  
assume_all(A,Last,As,As):-atomic(A),!,Last=A.
assume_all(A->B,Last,As,Bs):-
   memberchk(A,As),
   !,
   assume_all(B,Last,As,Bs).
assume_all(A->B,Last,As,[A|Bs]):-
   assume_all(B,Last,As,Bs).

% works on Horn clauses - includes
% preporcessing from implicational form
% from which the translation is reversible

xprove(T0):-toSortedHorn(T0,T),ljx(T,[]),!.

xprove_init(T0):-toSortedHorn(T0,_).

ljx(A,Vs):-memberchk(A,Vs),!. 
ljx((B:-[B]),_):-!.
ljx((B:-As),Vs1):-!,
  add_all(As,Vs1,Vs2),
  ljx(B,Vs2).
ljx(G,Vs1):- % atomic(G), G not on Vs
  select((B:-As),Vs1,Vs2),
  select(A,As,Bs), 
  ljx_imp(A,B,Vs2),
  !,
  trimmed((B:-Bs),NewB),
  add_new(NewB,Vs2,Vs3),
  ljx(G,Vs3).
  
ljx_imp(A,_B,Vs):-
   atomic(A),
   !,
   memberchk(A,Vs).
ljx_imp((D:-Cs),B,Vs1):-
   add_new((B:-[D]),Vs1,Vs2),
   ljx((D:-Cs),Vs2).

trimmed((A:-[]),A).
trimmed((A:-[B|Bs]),A:-[B|Bs]).

add_all([],Ys,Ys):-!.
add_all([X|Xs],Ys,Rs):-
   memberchk(X,Ys),
   !,
   add_all(Xs,Ys,Rs).
add_all([X|Xs],Ys,[X|Rs]):-
add_all(Xs,Ys,Rs).


%%%   

zprove0(T0):-toSortedHorn(T0,_).

zprove(T0):-
  toSortedHorn(T0,T),
  %ppp(T),
  ljz(T,[]),!.

%:-table(ljz/2).

ljz(A,Vs):-memberchk(A,Vs),!. 
ljz((B:-[B]),_):-!.
ljz((B:-As),Vs1):-!,add_all(As,Vs1,Vs2),ljz(B,Vs2).
ljz(G,Vs1):-zreduce(Vs1,Vs2),ljz(G,Vs2).

zreduce(Vs1,Vs3):-
  select((B:-As),Vs1,Vs2),
  select(A,As,Bs), 
  ljz_imp(A,B,Vs2),
  !,
  trimmed((B:-Bs),NewB),
  add_new(NewB,Vs2,Vs3).

ljz_imp(A,_B,Vs):-atomic(A),!,memberchk(A,Vs).
ljz_imp((D:-Cs),B,Vs1):-
  add_new((B:-[D]),Vs1,Vs2),
  ljz((D:-Cs),Vs2).

% trims implications when statically equivalend to A->A
qprove(T0):-
  trimImps(T0,T),
  %ppp(T),
  ljq(T,[]),!.

ljq(A,Vs):-memberchk(A,Vs),!.
ljq((A->B),Vs1):-!,add_new(A,Vs1,Vs2),ljq(B,Vs2). 
ljq(G,Vs1):- % atomic(G),
  select(As,Vs1,Vs2),
  imphead(As,B),
  impsel(A,As,Bs),
  ljq_imp(A,B,Vs2),
  !,
  add_new(Bs,Vs2,Vs3),
  ljq(G,Vs3).

ljq_imp(A,_,Vs):-atomic(A),!,memberchk(A,Vs).   
ljq_imp((C->D),B,Vs1):-    
    add_new((D->B),Vs1,Vs2),
    add_new(C,Vs2,Vs3),
    ljq(D,Vs3).

imphead(_->As,H):-!,imphead(As,H).
imphead(H,H).

impsel(A,(A->Bs),Bs).
impsel(A,(B->Bs),(B->Cs)):-impsel(A,Bs,Cs).  
