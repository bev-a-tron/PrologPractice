is_great( mungo ).
is_great( zibb ).
is_great( bongo ).
is_great( arse ).

is_father( albert, bob ).
is_father( bob, chuck ).
is_father( chuck, dave ).
is_father( joe, dave ).


is_nice( X ) :-
    is_great( X ),
    not( is_great( X ) ).

is_son( X ) :-
    is_father( _, X ).


%is_ancestor( Assface, Mingo ) :-
%    is_father( Assface, Yolo ),
%    is_father( Mingo, Yolo ),
%    Assface \= Mingo.

is_ancestor( X, Y ):-
    is_ancestor( X, Z ), 
    is_ancestor( Z, Y ).
