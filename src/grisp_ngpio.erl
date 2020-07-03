-module(grisp_ngpio).

-export([on_load/0]).
-export([pin_init/1]).
-export([set_output/2]).

-on_load(on_load/0).

on_load() ->
    ok  = erlang:load_nif(atom_to_list(?MODULE), 0).

pin_init(_) ->
    erlang:nif_error("NIF library not loaded").

set_output(_, _) ->
    erlang:nif_error("NIF library not loaded").
