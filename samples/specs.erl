%% for plt tests
%% See : test/unit_test/test_plt.ml
-module(specs).

-compile(export_all).

-spec f_any(any()) -> ok.
f_any(_) -> ok.

-spec f_binary01(bitstring()) -> ok.
f_binary01(_) -> ok.

-spec f_binary02(binary()) -> ok.
f_binary02(_) -> ok.

-spec f_binary03(<<_:1111, _:_*2222>>) -> ok.
f_binary03(_) -> ok.

-spec f_binary04(<<>>) -> ok.
f_binary04(_) -> ok.

-spec f_anytuple(tuple()) -> ok.
f_anytuple(_) -> ok.

-spec f_tuple({foo, bar}) -> ok.
f_tuple(_) -> ok.

-spec f_union(foo | port() | 1 | bar | pid() | 2) -> ok.
f_union(_) -> ok.

-spec f_anymap(map()) -> ok.
f_anymap(_) -> ok.

-spec f_map(#{foo := foo, bar => bar, integer() := foo, atom() => bar}) -> ok.
f_map(_) -> ok.

-spec f_emptymap(#{}) -> ok.
f_emptymap(_) -> ok.
