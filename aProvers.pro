% provers using embedded Horn Clauses or customized
% for also handling negation and classic proofs
% via Glivenko's translation from classical to intuitionistic
% propositional calculus

:- op(425,  fy,  ~ ). % negation

gprove(T0):-dneg(T0,T),kprove(T).

dneg(X,((X->false)->false)).

kprove(T0):-expand_neg(T0,T),ljk(T,[]),!.
 
ljk(_,Vs):-memberchk(false,Vs),!.
ljk(A,Vs):-memberchk(A,Vs),!.
ljk((A->B),Vs):-!,ljk(B,[A|Vs]). 
ljk(G,Vs1):-
  select((A->B),Vs1,Vs2),
  ljk_imp(A,B,Vs2),
  !,
  ljk(G,[B|Vs2]).

ljk_imp((C->D),B,Vs):-!,ljk((C->D),[(D->B)|Vs]).
ljk_imp(A,_,Vs):-memberchk(A,Vs).   

expand_neg(A,R):-atomic(A),!,R=A.
expand_neg(~A,R):-!,expand_neg(A,B),R=(B->false).
expand_neg((A->B),(X->Y)):-expand_neg(A,X),expand_neg(B,Y).


% classicall logic propositional prover
% using Glivenko's double negation translation

% Glivenko's translation of a classical tautology
% is an intuitionistic tautology
cgprove(T0):-dneg(T0,T),cprove(T).

% handles also the atom "false" as a special case
% supports also negation seen as A->false
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


ljc_imp((C->D),B,Vs1):-!, 
   add_new((D->B),Vs1,Vs2),
   ljc((C->D),Vs2).
ljc_imp(A,_,Vs):-memberchk(A,Vs).   

% trims implications when statically equivalent to A->A
qprove(T0):-
  trimImps(T0,T),
  %ppp(T),
  ljq(T,[]),!.

qprove0(T0):-trimImps(T0,_). % for benchmarking baseline
  
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

% assumes all hypotheses at once
% while avoiding duplicates

aprove(T):-lja(T,[]),!.

lja(A,Vs):-memberchk(A,Vs),!.
lja(As,Vs1):-As=(_->_),!,
  assume_all(As,B,Vs1,Vs2),
  lja(B,Vs2). 
lja(G,Vs1):- % atomic(G),
  select((A->B),Vs1,Vs2),
  lja_imp(A,B,Vs2),
  !,
  add_new(B,Vs2,Vs3),
  lja(G,Vs3).

lja_imp(A,_,Vs):-atomic(A),!,memberchk(A,Vs).   
lja_imp((C->D),B,Vs1):-
   add_new((D->B),Vs1,Vs2),
   lja((C->D),Vs2).
  
assume_all(A,Last,As,As):-atomic(A),!,Last=A.
assume_all(A->B,Last,As,Bs):-
   memberchk(A,As),
   !,
   assume_all(B,Last,As,Bs).
assume_all(A->B,Last,As,[A|Bs]):-
   assume_all(B,Last,As,Bs).
