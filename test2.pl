%remove( ToBeRemoved, List, AfterRemoval ).
%remove( mungo, [mungo, thinks, mungo, is, great], [thinks, is, great] ).

% Y needs to either be the empty set when X = ToBeRemoved or
% Y is ToBeRemoved if X \= Y.

remove( _, [], [] ).
remove( ToBeRemoved, [ X | Rest ], [ X | AfterRemoval ] ) :-
	X \= ToBeRemoved,
	remove( ToBeRemoved, Rest, AfterRemoval ).

remove( ToBeRemoved, [ ToBeRemoved | Rest ], AfterRemoval ) :-
	remove( ToBeRemoved, Rest, AfterRemoval ).