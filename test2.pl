%remove( ToBeRemoved, List, AfterRemoval ).
%remove( mungo, [mungo, thinks, mungo, is, great], [thinks, is, great] ).

remove( _, [], [] ).
remove( ToBeRemoved, [ X | Rest ], AfterRemoval ) :-
	% Y needs to either be the empty set when X = ToBeRemoved or
	% Y is ToBeRemoved if X \= Y.
	X \= ToBeRemoved,
	append( [X], AfterRemoval1, AfterRemoval ),
	remove( ToBeRemoved, Rest, AfterRemoval1 ).

remove( ToBeRemoved, [ ToBeRemoved | Rest ], AfterRemoval ) :-
	remove( ToBeRemoved, Rest, AfterRemoval ).