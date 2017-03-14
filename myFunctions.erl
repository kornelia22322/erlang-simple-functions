-module(myFunctions).
-export([power/2,duplicateElements/1,divisibleBy/2,contains/2,toBinary/1,toBinary/2]).

power(_,0) -> 1;
power(A,N) -> A*power(A,N-1).

duplicateElements(List) ->
  [2*N || N <- List].

divisibleBy(Lista,Dzielnik) ->
  [N || N <- Lista, N rem Dzielnik =:= 0].

contains([],_) ->
  false;

contains([Head|Tail],A) ->
  if Head =:= A -> true;
     true -> contains(Tail,A)
     end.

toBinary(N) ->
 if (N =:= 0) -> [0];
 true ->  toBinary(N,[])
 end.

toBinary(0,List) ->
  List;

toBinary(N,List) ->
   if (N rem 2 =:= 0) -> toBinary((N div 2),[0|List]);
       true -> toBinary((N div 2),[1|List])
   end.
