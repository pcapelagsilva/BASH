#!/bin/env bash

count = 0
while true; do
    count=$((count+1))

    # Executa e salva as saídas em arquivos separados
    ./falha.sh > out.log 2> err.log

    # Verifica o código de saída do comando anterior ($?)
    if [[ $? -ne 0 ]]; then
        echo "O script falhou após $count tentativas."
        echo "--- Conteúdo do Log de Saída ---"
        cat out.log
        echo "--- Conteúdo do Log de Erro ---"
        cat err.log
        break
    fi
done