%this is a sudoku solver

solution([D, E, F, H, I, J, U, V, W]) :-
	onebox(D),
	onebox(E),
	onebox(F),
	onebox(H),
	onebox(I),
	onebox(J),
	onebox(U),
	onebox(V),
	onebox(W),
	D = [[D1, D2, D3],[D4, D5, D6],[D7, D8, D9]],
	D = [[8, D2, D3],[D4, D5, D6],[D7, 1, D9]],
	E = [[E1, E2, E3],[E4, E5, E6],[E7, E8, E9]],
	E = [[4, E2, 6],[E4, E5, E6],[E7, E8, E9]],
	F = [[F1, F2, F3],[F4, F5, F6],[F7, F8, F9]],
	F = [[F1, F2, 7],[4, F5, F6],[6, 5, F9]],
	H = [[H1, H2, H3],[H4, H5, H6],[H7, H8, H9]],
	H = [[5, H2, 9],[H4, H5, H6],[H7, 4, 8]],
	I = [[I1, I2, I3],[I4, I5, I6],[I7, I8, I9]],
	I = [[I1, 3, I3],[I4, 7, I6],[I7, 2, I9]],
	J = [[J1, J2, J3],[J4, J5, J6],[J7, J8, J9]],
	J = [[J1, 7, 8],[J4, J5, J6],[1, J8, 3]],
	U = [[U1, U2, U3],[U4, U5, U6],[U7, U8, U9]],
	U = [[U1, 5, 2],[U4, U5, 1],[3, U8, U9]],
	V = [[V1, V2, V3],[V4, V5, V6],[V7, V8, V9]],
	V = [[V1, V2, V3],[V4, V5, V6],[9, V8, 2]],
	W = [[W1, W2, W3],[W4, W5, W6],[W7, W8, W9]],
	W = [[W1, 9, W3],[W4, W5, W6],[W7, W8, 5]],
	permutation([D1,E1,F1,H1,I1,J1,U1,V1,W1],[1,2,3,4,5,6,7,8,9]),
	permutation([D2,E2,F2,H2,I2,J2,U2,V2,W2],[1,2,3,4,5,6,7,8,9]),
	permutation([D3,E3,F3,H3,I3,J3,U3,V3,W3],[1,2,3,4,5,6,7,8,9]),
	permutation([D4,E4,F4,H4,I4,J4,U4,V4,W4],[1,2,3,4,5,6,7,8,9]),
	permutation([D5,E5,F5,H5,I5,J5,U5,V5,W5],[1,2,3,4,5,6,7,8,9]),
	permutation([D6,E6,F6,H6,I6,J6,U6,V6,W6],[1,2,3,4,5,6,7,8,9]),
	permutation([D7,E7,F7,H7,I7,J7,U7,V7,W7],[1,2,3,4,5,6,7,8,9]),
	permutation([D8,E8,F8,H8,I8,J8,U8,V8,W8],[1,2,3,4,5,6,7,8,9]),
	permutation([D9,E9,F9,H9,I9,J9,U9,V9,W9],[1,2,3,4,5,6,7,8,9]).

onebox([A, B, C, D, E, F, G, H, I]) :-
	permutation([A, B, C, D, E, F, G, H, I],[1,2,3,4,5,6,7,8,9]).


/*
onebox([A, B, C, D, E, F, G, H, I]) :-
	permutation([1,2,3,4,5,6,7,8,9]).
solution([A, B, C, D, E, F, G, H, I]) :-
	A = [ X, Y, Z | RestA ],
	B = [ R, S, T | RestB ],
	C = [ L, M, N | RestC ],
*/	