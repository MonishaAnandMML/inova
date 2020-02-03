#!/bin/sh
rebar3 get-deps
git apply --directory='_build/default/lib/riakc/' riakc_erl21.diff
cd _build/default/lib/se_core
sh pre_compile.sh
