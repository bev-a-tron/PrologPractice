%reverse( Forward, Backward ).
%reverse( [mungo, is, great], [great, is, mungo]).

reverse( [A], [A] ).
reverse( [Head | Tail], NewList ) :-
	reverse( Tail, List ),
	append( List, [Head], NewList ).

%hiiiii, jackass!