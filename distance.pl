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

%% try again: i think i get the order of first and end! 10 august 2012
%connected_cities( Destination, Journey ) :-
%	connected_cities( Destination, Journey, [] ).

%%  11 August 2012:  WHY DOES THIS RETURN A BUNCH OF OXFORDS IN A ROW?
%connected_cities( Destination, [ Destination, AnyCity ], AlreadyVisited ) :-
%	not( member( Destination, AlreadyVisited )),
%	adjacent_cities( Destination, AnyCity ).
%connected_cities( Destination, [ Destination | RestOfCities ], AlreadyVisited ) :-
%	adjacent_cities( Destination, CurrentCity ),
%	not( member( CurrentCity, AlreadyVisited )),
%	connected_cities( CurrentCity, RestOfCities, [ CurrentCity | AlreadyVisited ]).


%journey_between( Origin, Destination, Journey ) :-
%	journey_to( Destination, Journey ),
	%how do i ask that the last entry in Journey is Origin?
	
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
	

% try again: i think i get the order of first and end! 11 august 2012
%connected_cities2( FirstCity, [ FirstCity, EndCity ], [ FirstCity ] ) :-
%	adjacent_cities( FirstCity, EndCity ).
%connected_cities2( FirstCity, [ FirstCity | RestOfCities ], [ FirstCity | RestAlreadyVisited ]) :-
%	adjacent_cities( FirstCity, NextCity ),
%	not( member( NextCity, RestAlreadyVisited )),
%	connected_cities2( NextCity, RestOfCities, RestAlreadyVisited ).



% make a predicate that will list out all paths out of EndCity
%connected_cities( StartCity, [ StartCity, NextCity ]) :-
%	adjacent_cities( StartCity, NextCity ).
%connected_cities( StartCity, [ StartCity | Rest ] ) :-
%	adjacent_cities( StartCity, NextCity ),
%	connected_cities( NextCity, Rest ).

%check_for_uniqueness( [], [], [] ).
%check_for_uniqueness( ItemToCheck, [ Head | AlreadyInList ] ) :-
	

%connected_cities( X, Y, [ X, Y ], [ Y, X ] ) :-
%	adjacent_cities( X, Y ).
% make two lists, one going forward and one going backward
% make sure they are inverse from one another
%connected_cities( X, Y, [ X | Rest1 ], [ Y | Rest2 ]) :-
%	reverse1( [ X | Rest1 ], [ Y | Rest2 ]),
%	connected_cities( X, Y, Rest1 , Rest2 ).
% missing some stuff here... this isn't good yet.
%reverse1( [], [] ).
%reverse1( [Head | Tail], NewList ) :-
%        reverse( Tail, List ),
%        append( List, [Head], NewList ).	

%journey_between( Start, Finish, [ Start | Rest ] ) :-
%	journey_between( Start, X, Rest  ).

%journey_between( X, Y, List ).
%journey_between( london, southampton, [london, oxford, southampton]).

%journey_between( Start, Finish, [ Start, Finish ] ) :-
%	distance_between( Start, Finish, _ ).
%journey_between( X, Y, [ X, Y | Rest ]) :-
%	journey_between( X, Y, [ Y | Rest ] ),
%	distance_between( X, Y, _ ).

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