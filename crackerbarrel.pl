:- use_module(library(lambda)).

crackerbarrel :-
	crackerbarrel(Moves),
	show(Moves).

crackerbarrel2 :-
	crackerbarrel2(Moves),
	show2(Moves).

crackerbarrel3 :-
	crackerbarrel3(Moves),
	show3(Moves).

crackerbarrel4 :-
	crackerbarrel4(Moves),
	show4(Moves).

crackerbarrel5 :-
	crackerbarrel5(Moves),
	show5(Moves).

crackerbarrel6 :-
	crackerbarrel6(Moves),
	show6(Moves).

crackerbarrel7 :-
	crackerbarrel7(Moves),
	show7(Moves).

crackerbarrel8 :-
	crackerbarrel8(Moves),
	show8(Moves).

crackerbarrel9 :-
	crackerbarrel9(Moves),
	show9(Moves).

crackerbarrel10 :-
	crackerbarrel10(Moves),
	show10(Moves).

crackerbarrel11 :-
	crackerbarrel11(Moves),
	show11(Moves).

crackerbarrel12 :-
	crackerbarrel12(Moves),
	show12(Moves).

crackerbarrel13 :-
	crackerbarrel13(Moves),
	show13(Moves).

crackerbarrel14 :-
	crackerbarrel14(Moves),
	show14(Moves).

crackerbarrel15 :-
	crackerbarrel15(Moves),
	show15(Moves).


crackerbarrel(Moves) :-
	play([1], [2,3,4,5,6,7,8,9,10,11,12,13,14,15], [], Moves).

crackerbarrel2(Moves) :-
	play([2], [1,3,4,5,6,7,8,9,10,11,12,13,14,15], [], Moves).

crackerbarrel3(Moves) :-
	play([3], [1,2,4,5,6,7,8,9,10,11,12,13,14,15], [], Moves).

crackerbarrel4(Moves) :-
	play([4], [1,2,3,5,6,7,8,9,10,11,12,13,14,15], [], Moves).

crackerbarrel5(Moves) :-
	play([5], [1,2,3,4,6,7,8,9,10,11,12,13,14,15], [], Moves).

crackerbarrel6(Moves) :-
	play([6], [1,2,3,4,5,7,8,9,10,11,12,13,14,15], [], Moves).

crackerbarrel7(Moves) :-
	play([7], [1,2,3,4,5,6,8,9,10,11,12,13,14,15], [], Moves).

crackerbarrel8(Moves) :-
	play([8], [1,2,3,4,5,6,7,9,10,11,12,13,14,15], [], Moves).

crackerbarrel9(Moves) :-
	play([9], [1,2,3,4,5,6,7,8,10,11,12,13,14,15], [], Moves).

crackerbarrel10(Moves) :-
	play([10], [1,2,3,4,5,6,7,8,9,11,12,13,14,15], [], Moves).

crackerbarrel11(Moves) :-
	play([11], [1,2,3,4,5,6,7,8,9,10,12,13,14,15], [], Moves).

crackerbarrel12(Moves) :-
	play([12], [1,2,3,4,5,6,7,8,9,10,11,13,14,15], [], Moves).

crackerbarrel13(Moves) :-
	play([13], [1,2,3,4,5,6,7,8,9,10,11,12,14,15], [], Moves).

crackerbarrel14(Moves) :-
	play([14], [1,2,3,4,5,6,7,8,9,10,11,12,13,15], [], Moves).

crackerbarrel15(Moves) :-
	play([15], [1,2,3,4,5,6,7,8,9,10,11,12,13,14], [], Moves).




play(_, [_], Lst, Moves) :-
	reverse(Lst, Moves).

play(Free, Occupied, Lst, Moves) :-
	select(S, Occupied, Oc1),
	select(O, Oc1, Oc2),
	select(E, Free, F1),
	move(S, O, E),
	play([S, O | F1], [E | Oc2], [move(S,O,E) | Lst], Moves).



move(S,2,E) :-
	member([S,E], [[1,4], [4,1]]).
move(S,3,E) :-
	member([S,E], [[1,6], [6,1]]).
move(S,4,E):-
	member([S,E], [[2,7], [7,2]]).
move(S,5,E):-
	member([S,E], [[2,9], [9,2]]).
move(S,5,E):-
	member([S,E], [[3,8], [8,3]]).
move(S,6,E):-
	member([S,E], [[3,10], [10,3]]).
move(S,5,E):-
	member([S,E], [[4,6], [6,4]]).
move(S,7,E):-
	member([S,E], [[4,11], [11,4]]).
move(S,8,E):-
	member([S,E], [[4,13], [13,4]]).
move(S,8,E):-
	member([S,E], [[5,12], [12,5]]).
move(S,9,E):-
	member([S,E], [[5,14], [14,5]]).
move(S,9,E):-
	member([S,E], [[6,13], [13,6]]).
move(S,10,E):-
	member([S,E], [[6,15], [15,6]]).
move(S,8,E):-
	member([S,E], [[9,7], [7,9]]).
move(S,9,E):-
	member([S,E], [[10,8], [8,10]]).
move(S,12,E):-
	member([S,E], [[11,13], [13,11]]).
move(S,13,E):-
	member([S,E], [[12,14], [14,12]]).
move(S,14,E):-
	member([S,E], [[15,13], [13,15]]).


show(X) :-
	display(X, [1]).

show2(X) :-
	display(X, [2]).

show3(X) :-
	display(X, [3]).

show4(X) :-
	display(X, [4]).

show5(X) :-
	display(X, [5]).

show6(X) :-
	display(X, [6]).

show7(X) :-
	display(X, [7]).

show8(X) :-
	display(X, [8]).

show9(X) :-
	display(X, [9]).

show10(X) :-
	display(X, [10]).

show11(X) :-
	display(X, [11]).

show12(X) :-
	display(X, [12]).

show13(X) :-
	display(X, [13]).

show14(X) :-
	display(X, [14]).

show15(X) :-
	display(X, [15]).


display([], Free) :-
	numlist(1,15, Lst),
	maplist(\X^I^(member(X, Free) -> I = 0; I = 1),
		Lst,
		[I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,I11,I12,I13,I14,I15]),
	format('    ~w        ~n', [I1]),
	format('   ~w ~w      ~n', [I2,I3]),
	format('  ~w ~w ~w    ~n', [I4,I5,I6]),
	format(' ~w ~w ~w ~w  ~n', [I7,I8,I9,I10]),
	format('~w ~w ~w ~w ~w~n', [I11,I12,I13,I14,I15]),
	writeln(solved).


display([move(Start, Middle, End) | Tail], Free) :-
	numlist(1,15, Lst),
	maplist(\X^I^(member(X, Free) -> I = 0; I = 1),
		Lst,
		[I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,I11,I12,I13,I14,I15]),
	format('    ~w        ~n', [I1]),
	format('   ~w ~w      ~n', [I2,I3]),
	format('  ~w ~w ~w    ~n', [I4,I5,I6]),
	format(' ~w ~w ~w ~w  ~n', [I7,I8,I9,I10]),
	format('~w ~w ~w ~w ~w~n', [I11,I12,I13,I14,I15]),
	format('From ~w to ~w over ~w~n~n~n', [Start, End, Middle]),
	select(End, Free, F1),
	display(Tail,  [Start, Middle | F1]).



















































































