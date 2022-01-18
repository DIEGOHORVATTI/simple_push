#!/bin/bash

### Função para mostras as opções de uso do programa
opcoes_de_uso(){
echo "Uso: $(basename "$0") [OPÇÔES]

OPÇÕES
  -p, --progressive	Inicia o cronometro em ordem progressiva
			Obs.:Para limitar o tempo na contagem progressiva,
			é necessário informar o tempo final no formato
			hh:mm:ss.

  -r, --regressive	Inicia o cronometro em ordem regressiva.
			Obs.: Necessário informar tempo inicial 
			no formato hh:mm:ss.

  -h, --help		Mostra esta tela de ajuda e sai

  -v, --version		Mostra a versão do programa e sai

EXEMPLOS DE USO: 
   $./pomodoro -p.................contagem progessiva infinita
   $./pomodoro -p 01:00:00........contagem progressiva de 1 hora
   $./pomodoro -r 01:00:00........contagem regressiva de 1 hora
" && exit 1
}

### Função que mostra a versão atual do programa
versao() {
echo "v 1.0"
exit
}

read -p 'commit: ' commit

git branch -M main
git add .
git commit -m "$commit"
push -u origin main