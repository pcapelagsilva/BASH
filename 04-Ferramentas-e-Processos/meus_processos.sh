pidwait() {
    local pid=$1 # Armazena o ID do processo que queremos vigiar
    while kill -0 "$pid" 2>/dev/null; do # LOOP DE REPETIÇAÕ
        sleep 1 # Espera 1 segundo antes de checar de novo
    done

    echo "🔔 FIM DA ESPERA: O processo $pid foi encerrado!"
}
