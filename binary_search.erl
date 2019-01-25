-module(binary_search).
-export([contains/2]).

-include_lib("eunit/include/eunit.hrl").

contains([], _) -> false;

contains(List, Element) ->
  Middle = (length(List) + 1) div 2,
  MiddleElement = lists:nth(Middle, List),

  case MiddleElement of
    Element -> true;
    _ -> case MiddleElement > Element of
      true ->
        SubList = lists:sublist(List, 1, Middle - 1),
        contains(SubList, Element);
      false ->
        SubList = lists:sublist(List, Middle + 1, length(List)),
        contains(SubList, Element)
    end
  end.


