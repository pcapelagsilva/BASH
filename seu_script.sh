#!/usr/bin/env bash

n=$(( RANDOM % 100 ))

if [[ n -eq 42 ]]; then
   echo "Algo de errado"
   >&2 echo "O erro esta usando números mágicos"
   exit 1
fi

echo "Tudo esta de acordo com o plano"