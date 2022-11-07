%%---------------------------------------------------------%%
%% Fibonacci for nth Number.				   %%
%% Author : Subbaramaiah Chevuru			   %%
%% 							   %%
%% Revision Log						   %%
%%							   %%
%%---------------------------------------------------------%%

%%------------- Revision History --------------------------%%
%%
%% 30-11-2020	-  Added the initial draft to perform the 
%% 		   fibonacci number for nth term.
%%
%%---------------------------------------------------------%%
-module(prog).
 
-export([fibonacci/1,fib/3]).
 
fib(1,_,Res) -> 
    Res;
fib(N,Prev,Res) when N > 1 -> 
    fib(N-1, Res, Res+Prev).
 
fibonacci(M) -> 
    X = 0,
    Y = 1,
    G = M,
    F = fib(G,X,Y),
    io:format("~nThe ~pth fibonacci number is ~p~n",[M,F]).
