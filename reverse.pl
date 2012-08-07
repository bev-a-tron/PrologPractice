%reverse( Forward, Backward ).
%reverse( [mungo, is, great], [great, is, mungo]).

reverse( [], [] ).
reverse( [Head | Tail], NewList ) :-
	append( List, [Head], NewList ),
	reverse( Tail, List ).
