%reverse( Forward, Backward ).
%reverse( [mungo, is, great], [great, is, mungo]).

reverse( [], [] ).
reverse( [Head | Tail], NewList ) :-
	reverse( Tail, List ),
	append( List, [Head], NewList ).

%hiiiii, jackass!