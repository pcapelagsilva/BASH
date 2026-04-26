import pandas as pd
import json

# Caminho do arquivo que você já tem na pasta
caminho_local = '/home/pedrocapela/BASH/btc.json'

try:
    # Abrindo o arquivo local em vez de usar a URL
    with open(caminho_local, 'r') as f:
        dados = json.load(f)
    
    # Criando o DataFrame do Pandas
    df = pd.DataFrame(dados['bpi']).T
    
    usd = df.loc['USD', 'rate_float']
    eur = df.loc['EUR', 'rate_float']

    print("\n" + "="*30)
    print("📊 RELATÓRIO PANDAS (LOCAL)")
    print("="*30)
    print(f"Máximo (USD): ${df['rate_float'].max():,.2f}")
    print(f"Mínimo (USD): ${df['rate_float'].min():,.2f}")
    print(f"Diferença (USD-EUR): {usd - eur:.2f}")
    print("="*30)

except Exception as e:
    print(f"❌ Erro ao processar: {e}")
