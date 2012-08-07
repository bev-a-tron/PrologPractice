distance_between_atom( portsmouth, london, 56 ).
distance_between_atom( oxford, london, 42 ).
distance_between_atom( portsmouth, southampton, 23 ).
distance_between_atom( portsmouth, brighton, 39 ).
distance_between_atom( london, brighton, 23 ).
distance_between_atom( southampton, winchester, 13 ).
distance_between_atom( southampton, oxford, 34 ).
distance_between_atom( winchester, oxford, 28 ).
distance_between_atom( coventry, oxford, 35 ).

distance_between( X, Y, Dist ) :- distance_between_atom( X, Y, Dist ).
distance_between( X, Y, Dist ) :- distance_between_atom( Y, X, Dist ).

journey_between( X, Y, [X, Z, Y], TotalDistance) :-
        distance_between( X, Z, TempDistance1),
        distance_between( Z, Y, TempDistance2),
        TotalDistance is TempDistance1 + TempDistance2.

journey_between2( [X, Y], [X, Z, Y], TotalDistance) :-
	distance_between( X, Z, TempDistance1),
	distance_between( Z, Y, TempDistance2),
	TotalDistance is TempDistance1 + TempDistance2.

%list_all_routes( X, Y, List ) :-
%	distance_between( X, Z, Dist1),
%	distance_between( Z, Y, Dist2),
%	List = [X, Z, Y].

list_all_routes( Current, Destination, [ Current, Destination ]) :-
	distance_between( Current, Destination, _ ).
list_all_routes( X, Destination, [ X, Y | Rest ]) :- 
	distance_between( X, Y, _ ),
	list_all_routes( Y, Destination, [ Y | Rest] ). 	

% sum( List, Total ).
% sum( [5,7,28,2], X ).
% X = 42.

sum( [], 0 ).
%sum( [ A ], A ).
%sum( [ A, B ], Total) :-
%	Total is A + B.
sum( [ A | Rest ], Total) :-
	sum( Rest, RestSum ),
	Total is A + RestSum.

%remove( ToBeRemoved, List, AfterRemoval ).
%remove( mungo, [mungo, thinks, mungo, is, great], [thinks, is, great] ).

ToBeRemoved( RemoveThis, [RemoveThis | Tail]).
ToBeRemoved( RemoveThis, )
%journey_between( X, Y, [X|Rest], Distance ) :-
	

%        journey_as_list( [X], Y, Rest, Distance ).

%journey_as_list( [X,Y], Distance,) :-
%        distance_between( X, Y, Distance ).

journey_as_list( [First,Second|T], TotalDistance ) :-
        not( member( First, Second|T ) ),
        distance_between( First, Second, D1),
        journey_as_list( [Second | T], DRest),
        TotalDistance is DRest + D1.


% journey_between( X, Y, [X, Y], Z) :- distance_between( X, Y, Z).
                                               
% journey_between( X, Y, FullJourney, TotalDistance ) :-

%journey_between( X, Y, [X, Z, Y], TotalDistance) :-
%        distance_between( X, Z, TempDistance1),
%        distance_between( Z, Y, TempDistance2),
%        TotalDistance is TempDistance1 + TempDistance2.

% base case: journey_between( X, [], [X | ... ], ...)
%journey_between( Head, [], [Head | List], TotalDistance) :=
%        journey_between( [Head | List], List, )