student(manrorooban).
lover(abinaya,manoj).
friend(shehan,manoj).
student(alice).
student(bob).
student(dhana).
student(charlie).
student(clack).
teacher(dr_smith).
teacher(dr_johns).
teacher(dr_clack).
teacher(dr_williams).
teacher(browns).
programming_course(cs101).
database_course(cs102).
ai_course(cs103).
maths_course(cs104).
algorithm(cs105).

enrolled(alice,cs101).
enrolled(bob,cs102).
enrolled(charlie,cs001).
enrolled(dhana,cs001).
enrolled(alice,cs104).
enrolled(bob,cs105).
enrolled(charlie,cs104).

teaches(smith,cs104).
teaches(johns,cs102).
teaches(clack,cs103).
teaches(william,cs104).
teaches(brown,cs105).

course(cs101,programming).
course(cs102,database).
course(cs103,ai).
course(cs104,maths).
course(cs105,algorithm).


classmate(V,R):-enrolled(V,M),enrolled(R,M),V\=R.

is_student_of(A,B):-enrolled(A,J),teaches(B,J),A\=B.

relation(M,K):-lover(M,L),friend(K,L),M\=K.

shared_teacher(J,K):-student(J),student(K),enrolled(J,S),enrolled(K,S),J\=K.

beginner_course(G):-course(G,maths);course(G,programming).

enrolled_in_any_course(J):-student(J),enrolled(J,_).

has_students(X):-teacher(X),enrolled(X,_).

advanced_student(X):-student(X),enrolled(X,Y),\+beginner_course(Y).

