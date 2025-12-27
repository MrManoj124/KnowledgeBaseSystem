:-consult('tennis.pl').

%print(X,Y):-example(X,Y),example(X,Z),example(Y,Z).
%count(yes):-example(_,_,yes).

count(Nyes):-findall(yes,example(_,_,yes),L1),length(L1,Nyes).

count1(Nno):-findall(no,example(_,_,no),L2),length(L2,Nno).

count2(Nyes,Nno):-findall(yes,example(_,_,yes),L3),length(L3,Nyes),(no,example(_,_,no),L4),length(L4,Nno).


%prop(Pyes):-count(Nyes)*log2(count(Nyes)),length(Pyes).

%total(Nyes,Nno):-count(Nyes),count1(Nno).

prob(X):- count(Nyes), count1(Nno),
    Total is Nyes+Nno, Pyes is Nyes/Total,
    Pno is Nno/Total, Lyes is log(Pyes)/log(2),
    Lno is log(Pno)/log(2),A is Pyes*Lyes,
    B is Pno*Lno, X is -A-B.
