%--------------------------------------------------------------------------
% File     : SYJ207+1.014 : ILTP v1.1.2
% Domain   : Intuitionistic Syntactic
% Problem  : de Bruijn's example
% Version  : Especial.
%            Problem formulation : Inuit. Invalid.   Size 14
% English  : LHS(2*N) -> (p0 v RHS(2*N) v ~p0)
%            RHS(m) - &&_{i-1..m} p(i),
%            LHS(m) - &&_{i-1..m} ((p(i)<->p(i+1)) -> c(N))
%            where addition is computed modulo m, and with
%            c(N) - &&_{i-1..N} p(i)

% Refs     : [Dyc97] Roy Dyckhoff. Some benchmark formulas for
%                    intuitionistic propositional logic. At
%                    http://www.dcs.st-and.ac.uk/~rd/logic/marks.html
%          :         "de Bruijn, N.: personal communication in about 1990."
% Source   : [Dyc97]
% Names    : debruijn_n14 : Dyckhoff's benchmark formulas (1997)
%
% Status (intuit.) : Unsolved
% Rating (intuit.) : 1.00 v1.0.0
%

% Comments : "quite a tough exercise for students to prove by natural
%             deduction" [Dyc97]
%--------------------------------------------------------------------------
fof(axiom1,axiom,(
( ( p1 <-> p2)  -> ( p1 & ( p2 & ( p3 & ( p4 & ( p5 & ( p6 & ( p7 & ( p8 & ( p9 & ( p10 & ( p11 & ( p12 & ( p13 & ( p14 & ( p15 & ( p16 & ( p17 & ( p18 & ( p19 & ( p20 & ( p21 & ( p22 & ( p23 & ( p24 & ( p25 & ( p26 & ( p27 & p28 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )) )).

fof(axiom2,axiom,(
( ( p2 <-> p3)  -> ( p1 & ( p2 & ( p3 & ( p4 & ( p5 & ( p6 & ( p7 & ( p8 & ( p9 & ( p10 & ( p11 & ( p12 & ( p13 & ( p14 & ( p15 & ( p16 & ( p17 & ( p18 & ( p19 & ( p20 & ( p21 & ( p22 & ( p23 & ( p24 & ( p25 & ( p26 & ( p27 & p28 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )) )).

fof(axiom3,axiom,(
( ( p3 <-> p4)  -> ( p1 & ( p2 & ( p3 & ( p4 & ( p5 & ( p6 & ( p7 & ( p8 & ( p9 & ( p10 & ( p11 & ( p12 & ( p13 & ( p14 & ( p15 & ( p16 & ( p17 & ( p18 & ( p19 & ( p20 & ( p21 & ( p22 & ( p23 & ( p24 & ( p25 & ( p26 & ( p27 & p28 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )) )).

fof(axiom4,axiom,(
( ( p4 <-> p5)  -> ( p1 & ( p2 & ( p3 & ( p4 & ( p5 & ( p6 & ( p7 & ( p8 & ( p9 & ( p10 & ( p11 & ( p12 & ( p13 & ( p14 & ( p15 & ( p16 & ( p17 & ( p18 & ( p19 & ( p20 & ( p21 & ( p22 & ( p23 & ( p24 & ( p25 & ( p26 & ( p27 & p28 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )) )).

fof(axiom5,axiom,(
( ( p5 <-> p6)  -> ( p1 & ( p2 & ( p3 & ( p4 & ( p5 & ( p6 & ( p7 & ( p8 & ( p9 & ( p10 & ( p11 & ( p12 & ( p13 & ( p14 & ( p15 & ( p16 & ( p17 & ( p18 & ( p19 & ( p20 & ( p21 & ( p22 & ( p23 & ( p24 & ( p25 & ( p26 & ( p27 & p28 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )) )).

fof(axiom6,axiom,(
( ( p6 <-> p7)  -> ( p1 & ( p2 & ( p3 & ( p4 & ( p5 & ( p6 & ( p7 & ( p8 & ( p9 & ( p10 & ( p11 & ( p12 & ( p13 & ( p14 & ( p15 & ( p16 & ( p17 & ( p18 & ( p19 & ( p20 & ( p21 & ( p22 & ( p23 & ( p24 & ( p25 & ( p26 & ( p27 & p28 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )) )).

fof(axiom7,axiom,(
( ( p7 <-> p8)  -> ( p1 & ( p2 & ( p3 & ( p4 & ( p5 & ( p6 & ( p7 & ( p8 & ( p9 & ( p10 & ( p11 & ( p12 & ( p13 & ( p14 & ( p15 & ( p16 & ( p17 & ( p18 & ( p19 & ( p20 & ( p21 & ( p22 & ( p23 & ( p24 & ( p25 & ( p26 & ( p27 & p28 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )) )).

fof(axiom8,axiom,(
( ( p8 <-> p9)  -> ( p1 & ( p2 & ( p3 & ( p4 & ( p5 & ( p6 & ( p7 & ( p8 & ( p9 & ( p10 & ( p11 & ( p12 & ( p13 & ( p14 & ( p15 & ( p16 & ( p17 & ( p18 & ( p19 & ( p20 & ( p21 & ( p22 & ( p23 & ( p24 & ( p25 & ( p26 & ( p27 & p28 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )) )).

fof(axiom9,axiom,(
( ( p9 <-> p10)  -> ( p1 & ( p2 & ( p3 & ( p4 & ( p5 & ( p6 & ( p7 & ( p8 & ( p9 & ( p10 & ( p11 & ( p12 & ( p13 & ( p14 & ( p15 & ( p16 & ( p17 & ( p18 & ( p19 & ( p20 & ( p21 & ( p22 & ( p23 & ( p24 & ( p25 & ( p26 & ( p27 & p28 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )) )).

fof(axiom10,axiom,(
( ( p10 <-> p11)  -> ( p1 & ( p2 & ( p3 & ( p4 & ( p5 & ( p6 & ( p7 & ( p8 & ( p9 & ( p10 & ( p11 & ( p12 & ( p13 & ( p14 & ( p15 & ( p16 & ( p17 & ( p18 & ( p19 & ( p20 & ( p21 & ( p22 & ( p23 & ( p24 & ( p25 & ( p26 & ( p27 & p28 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )) )).

fof(axiom11,axiom,(
( ( p11 <-> p12)  -> ( p1 & ( p2 & ( p3 & ( p4 & ( p5 & ( p6 & ( p7 & ( p8 & ( p9 & ( p10 & ( p11 & ( p12 & ( p13 & ( p14 & ( p15 & ( p16 & ( p17 & ( p18 & ( p19 & ( p20 & ( p21 & ( p22 & ( p23 & ( p24 & ( p25 & ( p26 & ( p27 & p28 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )) )).

fof(axiom12,axiom,(
( ( p12 <-> p13)  -> ( p1 & ( p2 & ( p3 & ( p4 & ( p5 & ( p6 & ( p7 & ( p8 & ( p9 & ( p10 & ( p11 & ( p12 & ( p13 & ( p14 & ( p15 & ( p16 & ( p17 & ( p18 & ( p19 & ( p20 & ( p21 & ( p22 & ( p23 & ( p24 & ( p25 & ( p26 & ( p27 & p28 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )) )).

fof(axiom13,axiom,(
( ( p13 <-> p14)  -> ( p1 & ( p2 & ( p3 & ( p4 & ( p5 & ( p6 & ( p7 & ( p8 & ( p9 & ( p10 & ( p11 & ( p12 & ( p13 & ( p14 & ( p15 & ( p16 & ( p17 & ( p18 & ( p19 & ( p20 & ( p21 & ( p22 & ( p23 & ( p24 & ( p25 & ( p26 & ( p27 & p28 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )) )).

fof(axiom14,axiom,(
( ( p14 <-> p15)  -> ( p1 & ( p2 & ( p3 & ( p4 & ( p5 & ( p6 & ( p7 & ( p8 & ( p9 & ( p10 & ( p11 & ( p12 & ( p13 & ( p14 & ( p15 & ( p16 & ( p17 & ( p18 & ( p19 & ( p20 & ( p21 & ( p22 & ( p23 & ( p24 & ( p25 & ( p26 & ( p27 & p28 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )) )).

fof(axiom15,axiom,(
( ( p15 <-> p16)  -> ( p1 & ( p2 & ( p3 & ( p4 & ( p5 & ( p6 & ( p7 & ( p8 & ( p9 & ( p10 & ( p11 & ( p12 & ( p13 & ( p14 & ( p15 & ( p16 & ( p17 & ( p18 & ( p19 & ( p20 & ( p21 & ( p22 & ( p23 & ( p24 & ( p25 & ( p26 & ( p27 & p28 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )) )).

fof(axiom16,axiom,(
( ( p16 <-> p17)  -> ( p1 & ( p2 & ( p3 & ( p4 & ( p5 & ( p6 & ( p7 & ( p8 & ( p9 & ( p10 & ( p11 & ( p12 & ( p13 & ( p14 & ( p15 & ( p16 & ( p17 & ( p18 & ( p19 & ( p20 & ( p21 & ( p22 & ( p23 & ( p24 & ( p25 & ( p26 & ( p27 & p28 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )) )).

fof(axiom17,axiom,(
( ( p17 <-> p18)  -> ( p1 & ( p2 & ( p3 & ( p4 & ( p5 & ( p6 & ( p7 & ( p8 & ( p9 & ( p10 & ( p11 & ( p12 & ( p13 & ( p14 & ( p15 & ( p16 & ( p17 & ( p18 & ( p19 & ( p20 & ( p21 & ( p22 & ( p23 & ( p24 & ( p25 & ( p26 & ( p27 & p28 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )) )).

fof(axiom18,axiom,(
( ( p18 <-> p19)  -> ( p1 & ( p2 & ( p3 & ( p4 & ( p5 & ( p6 & ( p7 & ( p8 & ( p9 & ( p10 & ( p11 & ( p12 & ( p13 & ( p14 & ( p15 & ( p16 & ( p17 & ( p18 & ( p19 & ( p20 & ( p21 & ( p22 & ( p23 & ( p24 & ( p25 & ( p26 & ( p27 & p28 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )) )).

fof(axiom19,axiom,(
( ( p19 <-> p20)  -> ( p1 & ( p2 & ( p3 & ( p4 & ( p5 & ( p6 & ( p7 & ( p8 & ( p9 & ( p10 & ( p11 & ( p12 & ( p13 & ( p14 & ( p15 & ( p16 & ( p17 & ( p18 & ( p19 & ( p20 & ( p21 & ( p22 & ( p23 & ( p24 & ( p25 & ( p26 & ( p27 & p28 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )) )).

fof(axiom20,axiom,(
( ( p20 <-> p21)  -> ( p1 & ( p2 & ( p3 & ( p4 & ( p5 & ( p6 & ( p7 & ( p8 & ( p9 & ( p10 & ( p11 & ( p12 & ( p13 & ( p14 & ( p15 & ( p16 & ( p17 & ( p18 & ( p19 & ( p20 & ( p21 & ( p22 & ( p23 & ( p24 & ( p25 & ( p26 & ( p27 & p28 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )) )).

fof(axiom21,axiom,(
( ( p21 <-> p22)  -> ( p1 & ( p2 & ( p3 & ( p4 & ( p5 & ( p6 & ( p7 & ( p8 & ( p9 & ( p10 & ( p11 & ( p12 & ( p13 & ( p14 & ( p15 & ( p16 & ( p17 & ( p18 & ( p19 & ( p20 & ( p21 & ( p22 & ( p23 & ( p24 & ( p25 & ( p26 & ( p27 & p28 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )) )).

fof(axiom22,axiom,(
( ( p22 <-> p23)  -> ( p1 & ( p2 & ( p3 & ( p4 & ( p5 & ( p6 & ( p7 & ( p8 & ( p9 & ( p10 & ( p11 & ( p12 & ( p13 & ( p14 & ( p15 & ( p16 & ( p17 & ( p18 & ( p19 & ( p20 & ( p21 & ( p22 & ( p23 & ( p24 & ( p25 & ( p26 & ( p27 & p28 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )) )).

fof(axiom23,axiom,(
( ( p23 <-> p24)  -> ( p1 & ( p2 & ( p3 & ( p4 & ( p5 & ( p6 & ( p7 & ( p8 & ( p9 & ( p10 & ( p11 & ( p12 & ( p13 & ( p14 & ( p15 & ( p16 & ( p17 & ( p18 & ( p19 & ( p20 & ( p21 & ( p22 & ( p23 & ( p24 & ( p25 & ( p26 & ( p27 & p28 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )) )).

fof(axiom24,axiom,(
( ( p24 <-> p25)  -> ( p1 & ( p2 & ( p3 & ( p4 & ( p5 & ( p6 & ( p7 & ( p8 & ( p9 & ( p10 & ( p11 & ( p12 & ( p13 & ( p14 & ( p15 & ( p16 & ( p17 & ( p18 & ( p19 & ( p20 & ( p21 & ( p22 & ( p23 & ( p24 & ( p25 & ( p26 & ( p27 & p28 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )) )).

fof(axiom25,axiom,(
( ( p25 <-> p26)  -> ( p1 & ( p2 & ( p3 & ( p4 & ( p5 & ( p6 & ( p7 & ( p8 & ( p9 & ( p10 & ( p11 & ( p12 & ( p13 & ( p14 & ( p15 & ( p16 & ( p17 & ( p18 & ( p19 & ( p20 & ( p21 & ( p22 & ( p23 & ( p24 & ( p25 & ( p26 & ( p27 & p28 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )) )).

fof(axiom26,axiom,(
( ( p26 <-> p27)  -> ( p1 & ( p2 & ( p3 & ( p4 & ( p5 & ( p6 & ( p7 & ( p8 & ( p9 & ( p10 & ( p11 & ( p12 & ( p13 & ( p14 & ( p15 & ( p16 & ( p17 & ( p18 & ( p19 & ( p20 & ( p21 & ( p22 & ( p23 & ( p24 & ( p25 & ( p26 & ( p27 & p28 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )) )).

fof(axiom27,axiom,(
( ( p27 <-> p28)  -> ( p1 & ( p2 & ( p3 & ( p4 & ( p5 & ( p6 & ( p7 & ( p8 & ( p9 & ( p10 & ( p11 & ( p12 & ( p13 & ( p14 & ( p15 & ( p16 & ( p17 & ( p18 & ( p19 & ( p20 & ( p21 & ( p22 & ( p23 & ( p24 & ( p25 & ( p26 & ( p27 & p28 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )) )).

fof(axiom28,axiom,(
( ( p28 <-> p1)  -> ( p1 & ( p2 & ( p3 & ( p4 & ( p5 & ( p6 & ( p7 & ( p8 & ( p9 & ( p10 & ( p11 & ( p12 & ( p13 & ( p14 & ( p15 & ( p16 & ( p17 & ( p18 & ( p19 & ( p20 & ( p21 & ( p22 & ( p23 & ( p24 & ( p25 & ( p26 & ( p27 & p28 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )) )).

fof(con,conjecture,(
( p0 v ( ( p1 & ( p2 & ( p3 & ( p4 & ( p5 & ( p6 & ( p7 & ( p8 & ( p9 & ( p10 & ( p11 & ( p12 & ( p13 & ( p14 & ( p15 & ( p16 & ( p17 & ( p18 & ( p19 & ( p20 & ( p21 & ( p22 & ( p23 & ( p24 & ( p25 & ( p26 & ( p27 & p28 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) v ~(p0) ) )
)).

%--------------------------------------------------------------------------
