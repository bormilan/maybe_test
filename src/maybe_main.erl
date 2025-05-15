-module(maybe_main).

-feature(maybe_expr, enable).

-export([foo/0]).

foo() ->
    maybe
        2 ?= 1 + 1
    else
        _ -> ok
    end.
