
reverse([], []).
reverse([S|LTail], R) :-
  reverse(LTail, RWithoutLast),
  append(RWithoutLast, [S], R).

