factorial( 0, 0 ).
factorial( NewNum, NewProduct ) :-
	Product = NewProduct * NewNum,
	Num = NewNum - 1,
	factorial( Num, Product ).