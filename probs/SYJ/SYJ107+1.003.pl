%--------------------------------------------------------------------------
% File     : SYJ107+1.003 : ILTP v1.1.2
% Domain   : Intuitionistic Syntactic
% Problem  : 
% Version  : Especial.
%            Problem formulation : Intuit. Valid  Size 3
% English  : 

% Refs     : [SN00]  S. Schmitt & A. Nogin: test module "jprover_tests.ml",
%                    test formulas for JProver in MetaPRL, at
%                    http://cvs.metaprl.org:12000/cvsweb/metaprl/theories/
%                         itt/jprover_tests.ml
%            [ES99]  U. Egly & S. Schmitt. On intuitionistic proof
%                    transformations, their complexity, and application to 
%                    constructive program synthesis. In Fundamenta 
%                    Informaticae, Special Issue: Symbolic Computation and 
%                    Artificial Intelligence, vol. 39, 1/2, p. 59-83, 1999
% Source   : [SN00]
% Names    : prop_n3 : JProver test formulae (2000)
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.00 v1.0.0
%

% Comments : cause exponential proof length in EVERY LJ proof wrt. the 
%            proof length of a given LJmc proof in propositional 
%            intuitionistic logic 
%--------------------------------------------------------------------------
fof(axiom1,axiom,(
a3)).

fof(axiom2,axiom,(
( b1 -> ( ( b2 v a2 ) v b2 )) )).

fof(axiom3,axiom,(
( b -> ( ( b1 v a1 ) v b1 )) )).

fof(axiom4,axiom,(
( ( b v a ) v b ))).

fof(con,conjecture,(
( a v ( ( b & a1 ) v ( ( b1 & a2 ) v ( b2 & a3 ) ) ) )
)).

%--------------------------------------------------------------------------
