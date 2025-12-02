student(manrorooban).
lover(abinaya,manoj).
friend(shehan,manoj).
student(alice).
student(bob).
student(dhana).
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

classmate(V,R):-enrolled(V,M),enrolled(R,M),V\=R.

is_student_of(A,B):-student(A),teacher(B),A\=B.

relation(M,K):-lover(M,L),friend(K,L),M\=K.



