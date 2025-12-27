car(toyota,model(corolla),engine(1600), color(blue,white,yellow)).
car(honda,model(civic),engine(1800),color(red)).
car(nissan,model(altima),engine(2000),color(black,blue,grey)).


born(jan, date(20,3,1977)).
born(jeroen, date(2,2,1992)).
born(joris, date(17,3,1995)).
born(jelle, date(1,1,2004)).
born(jesus, date(24,12,0)).
born(joop, date(30,4,1989)).
born(jannecke, date(17,3,1993)).
born(jaap, date(16,11,1995)).

year(Y,Person):-born(Person,date(_,_,Y)).

older(X,Y):-born(X,date(_,_,Z)),born(Y,date(_,_,S)),Z<S.

before(date(D1,M1,Y1),date(D2,M2,Y2)):-Y1<Y2,!;(M1<M2, Y1=Y2,!); (D1<D2,M1=M2, Y1=Y2).


prime()
