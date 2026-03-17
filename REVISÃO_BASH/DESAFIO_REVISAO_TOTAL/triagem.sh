#!/bin/bash

#1. DEFININDO VARIÁVEIS
PROJETO="Triagem_Falciforme"
DATA=$(date +%d-%m-%y)

echo "Iniciando Pipeline: $PROJETO em $DATA"

#2. CRIAR ESTRUTURA DE DADOS DE TESTE
echo ">paciente_01: HBB_NORMAL" > p01.fasta
echo ">paciente_02: HBB_MUTANTE" > p02.fasta
echo ">paciente_03: HBB_MUTANTE" > p03.fasta

#3. O LOOP DE PROCESSAMENTO E PIPE
echo "Analisando sequências..."
mkdir -p RESULTADOS
for f in *.fasta; do
    # FILTRAR QUEM TEM A MUTAÇÃO E SALVA NO RELATÓRIO
    grep "MUTANTE" "$f" >> RESULTADOS/relatorio_final.txt
done

#4. FINALIZAÇÃO
echo "Triagem concluída... Resultados salvos em RESULTADOS/"