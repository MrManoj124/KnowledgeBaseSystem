adjust(red,blue).
adjust(red,green).
adjust(red,yellow).

adjust(yellow,red).
adjust(yellow,green).
adjust(yellow,blue).

adjust(green,red).
adjust(green,yellow).
adjust(green,blue).

adjust(blue,red).
adjust(blue,yellow).
adjust(blue,green).
%colouring([A,B,C,D,E]):-adjust(A,B),
          adjust(A,D),adjust(A,C),adjust(A,E),
          adjust(B,C),adjust(B,D),adjust(B,E),
          adjust(C,D),adjust(C,E),adjust(D,E).

different(X,Y):-X\=Y.

%no_red_yellow(X,Y):-\+((X=red, Y=yellow); (X=yellow, Y=red)).

%coloring([A,B,C,D,E]):-adjust(A,B),
 %        adjust(A,C),adjust(A,D),adjust(A,E),
  %       adjust(B,C),adjust(B,D),adjust(B,E),
   %      adjust(C,D),adjust(C,E),adjust(D,E),
    %     no_red_yellow(A,B),no_red_yellow(A,C),
     %    no_red_yellow(A,D),no_red_yellow(A,E),
      %   no_red_yellow(B,C),no_red_yellow(B,D),
       %  no_red_yellow(B,E),no_red_yellow(C,D),
        % no_red_yellow(C,E),no_red_yellow(D,E).


