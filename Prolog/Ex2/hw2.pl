my_reverse([], Acc, Acc).
my_reverse([Head|Tail],Acc, Result) :-my_reverse(Tail,[Head|Acc],Result).
my_reverse(Original,Result):-my_reverse(Original,[],Result).

my_suffix(S,L):-append(S,_,L).


%base case if true return true
my_member(Head,[Head|_]).
my_member(Value,[_|TAIL]):-my_member(Value,TAIL).

my_palindrome(A,[],A).
my_palindrome(Original,[Head|Tail], Rev):-my_palindrome(Original,Tail, [Head|Rev]).
my_palindrome(L):-my_palindrome(L,L,[]).

my_sorted([]).
%check for one element list
my_sorted([_|[]]).
my_sorted([A,B|Tail]):-A<B,my_sorted([B|Tail]).

%myreverse2([],[]).
%myreverse2([X|T], Res):-myreverse2(T,Res1), append(Res1,[X], Res).



sub_P(Curr,[Curr|X],X).
sub_P(Curr,[Head|Result],[Head|Second]) :- sub_P(Curr,Result,Second).

my_permutation([Head|Tail],Return) :- my_permutation(Tail,X), sub_P(Head,Return,X).
my_permutation([],[]).




%===== Queries for the full Tar2 and their interface with VPL =====
sol1a :- my_reverse([a,b,c],L), writeln(L).
sol1b :- my_reverse([],L), writeln(L).
sol1  :- sol1a, sol1b.
sol2a :- findall([1,2],my_suffix([1,2],[1,2,3,4]),L1), writeln(L1).
sol2b :- findall([1,2],my_suffix([1,2],[3,4,1,2]),L1), writeln(L1).
sol2c :- findall([],my_suffix([],[3,4,1,2]),L1), writeln(L1).
sol2  :- sol2a, sol2b, sol2c.
sol3a :- findall([b,c,1,a,c],my_member(a,[b,c,1,a,c]),L1), writeln(L1).
sol3b :- findall([],my_member(a,[]),L1), writeln(L1).
sol3  :- sol3a, sol3b.
sol4a :- findall([a,1,1,a],my_palindrome([a,1,1,a]),L1), writeln(L1).
sol4b :- findall([a,1,2,1,a],my_palindrome([a,1,2,1,a]),L1), writeln(L1).
sol4c :- findall([a,1,1,2,a],my_palindrome([a,1,1,2,a]),L1), writeln(L1).
sol4d :- findall([],my_palindrome([]),L1), writeln(L1).
sol4  :- sol4a, sol4b, sol4c, sol4d.
sol5a :- findall([1,2,4,8],my_sorted([1,2,4,8]),L1), writeln(L1).
sol5b :- findall([1],my_sorted([1]),L1), writeln(L1).
sol5c :- findall([],my_sorted([]),L1), writeln(L1).
sol5d :- findall([1,2,4,3,6],my_sorted([1,2,4,3,6]),L1), writeln(L1).
sol5  :- sol5a, sol5b, sol5c, sol5d.
sol6a :- findall(L0,my_permutation([1,2,3],L0),L1), writeln(L1).
sol6b :- findall(L0,my_permutation([1,2],L0),L1), writeln(L1).
sol6c :- findall(L0,my_permutation([],L0),L1), writeln(L1).
sol6  :- sol6a, sol6b, sol6c.
sol :- sol1, sol2, sol3, sol4, sol5, sol6.

:- initialization sol.
