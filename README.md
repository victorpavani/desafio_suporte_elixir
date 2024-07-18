Desafio Suporte Elixir
Este projeto é uma ferramenta de linha de comando desenvolvida em Elixir que ajuda a numerar corretamente os nomes dos reis e rainhas de Cumbúquia.

Desafio
O reino de Cumbúquia perdeu os registros históricos de sua família real. A tarefa é desenvolver uma ferramenta que receba uma lista de nomes e retorne os mesmos nomes numerados com números romanos conforme necessário.

Requisitos
Elixir 1.17
Erlang 27
Instalação do Elixir
Para instalar o Elixir, siga os passos abaixo:

Windows
1. Baixe e instale o Erlang.
2. Baixe e instale o Elixir.

MacOS
1. Instale o Homebrew:
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.s

2. Instale o Erlang e Elixir:
brew install elixir

Linux
1. Atualize os pacotes:
sudo apt-get update

2. Instale o Erlang:
sudo apt-get install erlang

3. Instale o Elixir:
sudo apt-get install elixir

*Como rodar o projeto*

1. Compilar o projeto
Para compilar o projeto, execute o comando:
mix compile

2. Executar os testes unitários
Para executar os testes unitários, utilize o comando:
mix test

3. Gerar o escript
Para criar o arquivo que permite executar o programa, utilize o comando:
mix escript.build

4. Executar o programa
Para executar o programa, utilize o comando:
escript .\desafio_suporte_novo

*Testes Unitários*
Os testes unitários verificam o seguinte:

1. Conversão de números para romanos:
Testa a conversão de números inteiros para números romanos, por exemplo, 1 para "I", 4 para "IV", etc.

2. Conversão de romanos para números:
Testa a conversão de números romanos para inteiros, por exemplo, "I" para 1, "IV" para 4, etc.

3. Numerar nomes corretamente:
Testa a função que numera os nomes corretamente, por exemplo, transforma ["Eduardo", "Maria", "Daniel", "Eduardo"] em ["Eduardo I", "Eduardo II", "Maria I", "Daniel I"].

4. Ordenar nomes por número romano:
Testa a ordenação dos nomes com base nos números romanos, por exemplo, transforma ["Eduardo II", "Eduardo I", "Maria I", "Daniel I"] em ["Eduardo I", "Maria I", "Daniel I",  "Eduardo II",].





