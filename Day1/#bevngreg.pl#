at_Jacques( chocolate, food ).
at_Jacques( tea, drink ).
at_Jacques( table, furniture ).
at_Jacques( annoying_people, people ).
at_Jacques( greg, people ).
at_Jacques( beverly, people ).
at_Jacques( cookies, food ).
at_Jacques( latte, drink ).
at_Jacques( chair, furniture ).

is_affordable( tea ).
is_affordable( chocolate ).

bev_can_buy( X ) :-
    at_Jacques( X, food ),
    is_affordable( X ).

bev_can_buy( X ) :-
    at_Jacques( X, drink ),
    is_affordable( X ).

is_yummy( X ) :-
    at_Jacques( X , food).

is_yummy( X ) :-
    at_Jacques( X , drink).
