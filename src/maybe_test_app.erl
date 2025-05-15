%%%-------------------------------------------------------------------
%% @doc maybe_test public API
%% @end
%%%-------------------------------------------------------------------

-module(maybe_test_app).

-feature(maybe_expr, enable).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    maybe
        2 ?= 1 + 1
    else
        _ -> ok
    end,
    maybe_main:foo(),
    maybe_test_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
