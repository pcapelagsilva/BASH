#!/bin/bash

# A função marco salva o caminho atual (pwd) e uma variável global
marco() {
    export MARCO_PATH=$(pwd)
    echo "Localização salva: $MARCO_PATH"
}

# A função 'polo' usa o comando 'cd' para ir até o caminho salvo
polo() {
    cd "$MARCO_PATH" || echo "Erro: Você ainda não executou 'marco'."
}