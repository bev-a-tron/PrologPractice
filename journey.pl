distance_between_atom( portsmouth, london, 56 ).
distance_between_atom( oxford, london, 42 ).
distance_between_atom( portsmouth, southampton, 23 ).
distance_between_atom( portsmouth, brighton, 39 ).
distance_between_atom( london, brighton, 23 ).
distance_between_atom( southampton, winchester, 13 ).
distance_between_atom( southampton, oxford, 34 ).
distance_between_atom( winchester, oxford, 28 ).
distance_between_atom( coventry, oxford, 35 ).
distance_between_atom( coventry, birmingham, 18 ).
distance_between_atom( coventry, nottingham, 68 ).

/*
distance_between_atom( oxford, nottingham, 75 ).
distance_between_atom( birmingham, nottingham, 72 ).
distance_between_atom( nottingham, sheffield, 26 ).
distance_between_atom( sheffield, leeds, 25 ).
distance_between_atom( leeds, manchester, 28 ).
distance_between_atom( birmingham, manchester, 51 ).
distance_between_atom( london, cambridge, 37 ).
distance_between_atom( cambridge, oxford, 52 ).
distance_between_atom( cambridge, norwich, 30 ).
distance_between_atom( nottingham, norwich, 68 ).
*/


distance_between( X, Y, Dist ) :- distance_between_atom( X, Y, Dist ).
distance_between( X, Y, Dist ) :- distance_between_atom( Y, X, Dist ).

adjacent_cities( X, Y ) :- distance_between( X, Y, _ ).
	
journey_between( Origin, Destination, Journey) :-
	journey_to( Destination, Journey ),
	last( Journey, Origin ).

journey_to( Destination, Journey ) :-
        connected_cities( Destination, Journey, [Destination] ).

connected_cities( Destination, [ Destination, AnyCity ], AlreadyVisited ) :-
        adjacent_cities( Destination, AnyCity ),
        not( member( AnyCity, AlreadyVisited )).
connected_cities( CurrentCity, [ CurrentCity | RestOfCities ], AlreadyVisited ) :-
	adjacent_cities( CurrentCity, NextCity ),
        not( member( NextCity, AlreadyVisited )),
	connected_cities( NextCity, RestOfCities, [ CurrentCity | AlreadyVisited ]).




% --------------------- ceri suggestions: (scroll down) ----------------------
% .
% .
% .
% .
% .
% .
% .
% .
% .
% .
% .
% .






% 1. Create a predicate which simply builds up lists of possible journeys TO a destination, not from
%    any starting point in particular. (This set will be infinite to begin with.)

% 2. Alter this predicate so that any given journey contains no duplicate entries in, i.e. no city is
%    visited twice.

% 3. To find all the journeys between X and Y, you need to find all journeys to Y that happen to start 
%    with X. (This is very easy - it's a simple pattern-matching constraint.) Create a predictate that
%    does this.

% 4. Now extend this predicate such that when you get hold of such a journey you also get hold of its
%    total travel distance.

% 5. Now create a predicate that finds the SHORTEST journey between X and Y. This is where you leverage
%    the real power of Prolog. Hint: how do you express in logical terms (predicate logic) the concept
%    of the shortest route between X and Y from the set of all possible routes between X and Y?

% 6. I am the king.