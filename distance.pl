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


%list_all_routes( Current, Destination, [ Current, Destination ]) :-
%	distance_between( Current, Destination, _ ).
%list_all_routes( X, Destination, [ X, Y | Rest ]) :- 
%	distance_between( X, Y, _ ),
%	list_all_routes( Y, Destination, [ Y | Rest] ). 	

%journey_as_list( [First,Second|T], TotalDistance ) :-
%        not( member( First, Second|T ) ),
%        distance_between( First, Second, D1),
%        journey_as_list( [Second | T], DRest),
%        TotalDistance is DRest + D1.