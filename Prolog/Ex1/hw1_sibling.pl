% Defintions of facts

married(avr,sara). % first couple
married(yit,rivka).
married(yaak,lea).
parent(avr,yit).
parent(yit,yaak).
parent(yaak,reuven).
parent(yaak,shimon).
parent(yaak,levi).
parent(yaak,yehuda).
parent(yaak,dina).
parent(yehuda,zerach).
parent(yehuda,peretz).
parent(levi,kehat).
parent(levi,gershon).
parent(levi,merari).
parent(dina,cuz).
male(avr).
male(yit).
male(yaak).
male(levi).
male(yehuda).
male(zerach).
male(peretz).
male(kehat).
male(gershon).
male(merari).
male(reuven).
male(shimon).
female(sara).
female(rivka).
female(lea).
female(dina).


% Definition of rules

%rule1
father(X,Y):-parent(X,Y),male(X).


%rule2
mother(X,Y):-parent(X,Y), female(X); married(Z,X), female(X), parent(Z,Y) .



% Section 3 - Definition of son(X,Y)
son(X,Y):-parent(Y,X),male(X).

%rule4 - Definititon of daughter
daughter(X,Y):-parent(Y,X),female(X).

%rule5 - defintion of grandfather.
grand_father(X,Y):-parent(X,Z),parent(Z,Y),male(X).


%rule6 - definition of grandmother
grand_mother(X,Y):-female(X),parent(X,Z),parent(Z,Y).

%rule7 - definition of grandson
grand_son(X,Y):-male(X),parent(Z,X),parent(Y,Z).


% Section 9 - Definition of diff(it's needed for sibling)
diff(X,Y):-not(X=Y).


%rule9 - definition of sibling
sibling(X,Y):-parent(Z,X),parent(Z,Y),diff(X,Y).





%rule 10 - defintion of uncle
uncle(X,Y):-parent(Z,Y),sibling(Z,X),male(X).

%rule11 - defintion of son of aunt(cousin)
cousin(X,Y):-parent(A,X),parent(B,Y),sibling(A,B),female(B).

%defintion of a brother inlaw of a wife
gisOfWife(X,Y):-married(Z,X),sibling(Z,Y),male(Y);sibling(X,Z),female(Z),married(Y,Z);married(X,C),sibling(C,G),female(G),married(Y,G).


%defintion of a brother inlaw of a husband
gisOfHusband(X,Y):-married(X,Z),sibling(Z,Y),male(Y);sibling(X,Z),female(Z),married(Y,Z);male(Y),married(X,W),sibling(W,F),female(F),married(Y,F).

%rule 13 - defintion of neice
neice(X,Y):-female(Y),parent(Z,Y),sibling(X,Z).

%rule 14 - defnition of secondDegreeCousins
secondDegreeCousins(X,Y):-parent(A,X),parent(B,Y),cousin(A,B).



% Section 8 - Definition of granddaugther
grand_daugther(X,Y):-female(X), parent(Z,X), parent(Y,Z).


%sol1 :- findall(L0,mother(sara,L0),L1), writeln(L1).
%sol2 :- findall(L0,mother(L0,shimon),L1), writeln(L1).
%sol3 :- findall(L0,mother(L0,joseph),L1), writeln(L1).
%sol :- sol1, sol2, sol3.
%sol :- sol1, sol2, sol3, halt.


%sol4 :- findall(L0,daughter(dina,L0),L1), writeln(L1).
%sol5 :- findall(L0,daughter(L0,yaak),L1), writeln(L1).
%sol6 :- findall(L0,daughter(L0,joseph),L1), writeln(L1).
%sol :- sol4, sol5, sol6.
%:- initialization sol.
%sol1 :- findall(L0,grand_father(yit,L0),L1), writeln(L1).
%sol2 :- findall(L0,grand_father(L0,yaak),L1), writeln(L1).
%sol3 :- findall(L0,grand_father(L0,joseph),L1), writeln(L1).
%sol :- sol1, sol2, sol3, halt.

%:- initialization sol.
%sol1 :- findall(L0,grand_mother(rivka,L0),L1), writeln(L1).
%sol2 :- findall(L0,grand_mother(L0,yaak),L1), writeln(L1).
%sol3 :- findall(L0,grand_mother(L0,joseph),L1), writeln(L1).
%sol :- sol1, sol2, sol3, halt.
%:- intializtion sol.


%sol1 :- findall(L0,grand_son(shimon,L0),L1), writeln(L1).
%sol2 :- findall(L0,grand_son(L0,yit),L1), writeln(L1).
%sol3 :- findall(L0,grand_son(L0,joseph),L1), writeln(L1).
%sol :- sol1, sol2, sol3.

%:- initialization sol.


%sol1 :- findall(L0,sibling(shimon,L0),L1), writeln(L1).
%sol2 :- findall(L0,sibling(L0,kehat),L1), writeln(L1).
%sol3 :- findall(L0,sibling(L0,joseph),L1), writeln(L1).
%sol :- sol1, sol2, sol3, halt.

%:- initialization sol.


sol1 :- findall(L0,uncle(moshe,L0),L1), writeln(L1).
sol2 :- findall(L0,uncle(L0,kehat),L1), writeln(L1).
sol3 :- findall(L0,uncle(L0,joseph),L1), writeln(L1).
sol :- sol1, sol2, sol3.

:- initialization sol.



