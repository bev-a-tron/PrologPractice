factorial( 1, 1 ).
factorial( NewNum, NewProduct ) :-
	Num is NewNum - 1,
	Num >= 0,
	factorial( Num, Product ),
	NewProduct is Product * NewNum.