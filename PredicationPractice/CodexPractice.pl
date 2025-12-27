prime(N):-N>1,\+has_diviser(N,2).
has_diviser(N,D):-D*D=<N, (N mod D =:=0, D1 is D+1, has_diviser(N,D1)).


goldbach(N,(A+B)):-N>2, N mod 2=:=0, between(1,N//2,A),
            prime(A),B is N-A, prime(B),! .
