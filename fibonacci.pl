fibonacci( 2, [ 1, 1 ]).
fibonacci( NumLeft, [ Next, X, Y | List ] ) :-
	NewNumLeft is NumLeft - 1,
	NewNumLeft >= 0,
	fibonacci( NewNumLeft, [ X, Y | List] ),
	Next is X + Y.