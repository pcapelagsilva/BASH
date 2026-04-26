#!/usr/bin/env bash

# Gera um número aleatório entre 0 e 99
n=$(( RANDOM % 100 ))

if [[ n -eq 42 ]]; then
    echo "Algo deu errado"
# O '>&2' envia a mensagem para o canal de Erro (STDERR)
    >&2 echo "O erro foi usar números mágicos"
    exit 1
fi

echo "Tudo correu conforme o planejado"
