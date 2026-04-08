#!/usr/bin/env bash

count=0
> out.log
> err.log

while true; do
    count=$((count + 1))
    # Substitua 'seu_script.sh' pelo nome do script que falha
    ./seu_script.sh >> out.log 2>> err.log
    
    # Se o comando falhar (status de saída não for 0)
    if [[ $? -ne 0 ]]; then
        echo "Falhou após $count execuções."
        echo "--- STDOUT ---"
        cat out.log
        echo "--- STDERR ---"
        cat err.log
        break
    fi
done
