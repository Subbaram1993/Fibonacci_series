%%---------------------------------------------------------%%
%% Fibonacci Series for the given Number.                  %%
%% Author : Subbaramaiah Chevuru                           %%
%%                                                         %%
%% Revision Log                                            %%
%%                                                         %%
%%---------------------------------------------------------%%

%%------------- Revision History --------------------------%%
%%
%% 30-11-2020   -  Added the initial draft to perform the
%%                 fibonacci series of given number.
%%
%%---------------------------------------------------------%%

-module(prog).
 
-export([fibonacci/1,fib/3]).
 
fib(1,_,Res) -> 
    io:format("~p  ",[Res]);
fib(N,Prev,Res) when N > 1 -> 
    io:format("~p  ",[Prev]),
    fib(N-1, Res, Res+Prev).
 
fibonacci(M) -> 
    X = 0,
    Y = 1,
    fib(M,X,Y),
    io:format("~n").
