% write a predicate that flattens a list of lists
% e.g. flatten( [a,[b,[c,d],e,[f,g]]], X ).
% X = [a,b,c,d,e,f,g].

flatten( [X], [X] ).
%flatten( [a, [b, c] ], [a, b, c] ).
%flatten( [[a, b], c ], [a, b, c] ).
flatten( [ Head | Rest ], Y ) :-
	append( Head, X, Y ),
	flatten( [ Rest ], X ).