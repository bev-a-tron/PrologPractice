%% ---------------------                                                                    
% splice( List1, List2, SplicedList ).
% ? - splice( [mungo, jerry, to, pub], [and, went, a], Output ).
% Output = [ mungo, and, jerry, went, to, a pub ].

% ? - splice( [ceri, is, a, total, utter, genius], [this, is, fibs], Output ).
% Output = [ ceri, this, is, is, a, fibs, total, utter, genius ].

splice( [], [], [] ).
splice( [ List1Head | List1 ], [ List2Head | List2 ], [ List1Head, List2Head | Answer ] ) :-
	splice( List1, List2, Answer ).
splice( [ List1Head | List1 ], List2, [ List1Head | Answer ] ) :-
	List2 = [],
	splice( List1, List2, Answer ).
splice( List1, [ List2Head | List2 ], [ List2Head | Answer ] ) :-
	List1 = [],
	splice( List1, List2, Answer ).