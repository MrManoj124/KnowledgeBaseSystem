//create animal.pl file containing animals program

dog(rover).
dog(handry).
cat(fellix).
cat(michel).
cat(jane).
animal:-dog(X).




mother(mary,john).
father(peter,john).
mother(mary,ann).
father(peter,ann).
mother(susan,mary).
father(george,mary).


parent(X,Y):-mother(X,Y).
parent(X,Y):-father(X,Y).

grandparent(X,Y):- parent(X,Z),parent(Z,Y).

ancestor(X,Y):-parent(X,Y).

sibilings(X,Y):-mother(M,X),mother(M,Y),father(F,X),father(F,Y),X\==Y.

parent(donal,malaniya).
parent(aniya,andriya).
parent(regan,newton).
parent(roshi,newton).
parent(aniya,malaniya).
parent(donal,andriya).
parent(john,harry).
parent(malaniya,harry).
parent(andriya,william).
parent(newton,william).

male(donal).
male(regan).
male(newton).
male(harry).
male(john).
male(william).

female(malaniya).
female(aniya).
female(andriya).
female(roshi).

father_of(donal,malaniya).
father_of(donal,andriya).
father_of(regan,newton).
father_of(newton,william).
father_of(john,harry).

grand_father_of(donal,harry).
grand_father_of(regan,william).

mother_of(aniya,malaniya).
mother_of(aniya,andriya).
mother_of(roshi,newton).
mother_of(malaniya,harry).
mother_of(andriya,william).

grand_mother_of(aniya,harry).
grand_mother_of(roshi,william).

mother_of(X,Y):-parent(X,Y),female(X).
father_of(X,Y):-parent(X,Y),male(X).


grandfather_of(X,Y):-male(X),parent(X,Z),parent(Z,Y).
grandmother_of(X,Y):-female(X),parent(X,Z),parent(Z,Y).

sister_of(X,Y):-female(X),parent(P,X),parent(P,Y).


