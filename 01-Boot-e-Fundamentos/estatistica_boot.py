import pandas as pd
import re

# Caminho do arquivo novo que criamos
caminho = 'boot_times.txt'

try:
    with open(caminho, 'r') as f:
        linhas = f.readlines()

    # Utilizamos o Regex para extrair apenas os números das frases
    tempo = []
    for linha in linhas:
        # Busca o número que vem antes de 's' (ex: 7.432s)
        match = re.search(r'(\d+\.\d+)s', linha)
        if match:
            tempo.append(float(match.group(1)))

    # Criamos uma série do Panda para calcular tudo de  uma vez
    df = pd.Series(tempo)

    print("\n📊 ESTATÍSTICAS DE BOOT (MIT)")
    print("-" * 30)
    print(f"Tempo Médio:   {df.mean():.2f} segundos")
    print(f"Tempo Mediano: {df.median():.2f} segundos")
    print(f"Tempo Máximo:  {df.max():.2f} segundos")
    print("-" * 30)

except Exception as e:
    print(f"Erro: Certifique-se de que o arquivo boot_times.txt existe. {e}")
