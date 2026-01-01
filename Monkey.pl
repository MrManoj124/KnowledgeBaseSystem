position(atdoor).
position(atwindow).
position(middle).

% Moves
move(state(middle, onbox, middle, hasnot), grasp, state(middle, onbox, middle, has), [grasp]).

move(state(P, onfloor, P, H), climb, state(P, onbox, P, H), [climb]) :- position(P).

move(state(P1, onfloor, P1, H), push(P1, P2), state(P2, onfloor, P2, H), [push(P1,P2)]) :- position(P1), position(P2), P1 \= P2.

move(state(P1, onfloor, B, H), walk(P1, P2), state(P2, onfloor, B, H), [walk(P1,P2)]) :- position(P1), position(P2), P1 \= P2.

% Goal: monkey has banana
canget(State, Seq) :- canget(State, [], Seq).

% Base case
canget(state(_, _, _, has), _, []).

% Recursive case with visited states
canget(State1, Visited, Sequence) :-
    \+ member(State1, Visited),          % avoid revisiting
    move(State1, _, State2, Action),
    canget(State2, [State1|Visited], SubSeq),
    append(Action, SubSeq, Sequence).
