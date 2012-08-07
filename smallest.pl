%smallest( List, Smallest ).
%smallest( [ 20, 42, 3, 16, 2, 9 ], 2 ).

smallest( [A], A ).
smallest( [ Head | Rest ], Head ) :-
	smallest( Rest , SmallestOfTheRest ),
	Head < SmallestOfTheRest.
smallest( [ Head | Rest ], Smallest ) :-
	smallest( Rest , Smallest ),
	Head >= Smallest.
	