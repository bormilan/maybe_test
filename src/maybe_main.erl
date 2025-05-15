-module(maybe_main).

-feature(maybe_expr, enable).

-export([foo/0]).

foo( ) -> maybe 1 else _ -> 2 end .
