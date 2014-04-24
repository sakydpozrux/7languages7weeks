
reverse([], []).
reverse([S|LTail], R) :-
  reverse(LTail, RWithoutLast),
  append(RWithoutLast, [S], R).


list_min(A, [A]) :- !.
list_min(A, [X, Xs|Xss]) :-
  X =< Xs,
  list_min(A, [X|Xss]), !.
list_min(A, [X, Xs|Xss]) :-
  X > Xs,
  list_min(A, [Xs|Xss]).


bubble_sort([A], [A]) :- !.
bubble_sort([Xh|Xt], Y) :-
  list_min(Xh, Y),
  select(Xh, Y, Ys),
  bubble_sort(Xt, Ys), !.
