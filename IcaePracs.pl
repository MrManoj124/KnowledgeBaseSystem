min_element(M,J,M):- M =< J.
min_element(M,J,J):- M > J.

max_element(K,L,K):- K > L, !.
%max_element(K,L,L).
list_length([],0).
list_length([_|L],N):-list_length(L, N1), N is N1 + 1.


exam_marks([],0).
exam_marks([_|N],M):-exam_marks(N, M1), M is M1 +1 .

is_member(M,[M| _]):-!.
is_member(M,[_ |restful],N):-is_member(M,restful,N).

append([],M,M).
append([X|M],N,[X|O]):-append(M,N,O).

insert(L,X,NewL):-insert(L,[X],NewL).

student(manoj).
student(kabi).
student(thanu).
student(rajeev).
student(rahul).

printstud:-student(Name),write(Name),nl,fail.

printstud.

numbers(Low, High):-between(Low, High, D),
    write(D),nl,fail.
numbers(_,_).

num(M,T):-between(M,T,D),write(D),nl,fail.
num(_,_).


distance((D1,J1),(D2,J2),K):-DX is D2-D1,
    DY is J2-J1, K is sqrt(DX*DX + DY * DY).

square(X,Y):-between(1,X,_), write(Y),nl,fail.
