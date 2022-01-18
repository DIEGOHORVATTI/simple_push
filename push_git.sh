#!/bin/bash

### Função que mostra a versão atual do programa
versao() {
echo "v 1.0"
exit
}

### Função para mostras as opções de uso do programa
help(){
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


read -p 'commit: ' commit
read -p 'branch: ' branch

git branch -M $branch &&
git add . &&
git commit -m ''$commit'' &&
git push -u origin $branch &&

echo -e "\033[0;32m.............................\n\033]"
echo -e "\033[0;32m           |SUCCESS| \n\033]"
echo -e "\033[0;32m.............................\n\033]"
echo -e "\033[0;32m| commit: $commit  \n\033]"
echo -e "\033[0;32m| branch: $branch  \n\033]"
echo -e "\033[0;32m.............................\n\033]"

while test $# -gt 0
do
    case "$1" in
        -h | --help) help ;;
        -h | --help) help ;;
       *) help ;;
    esac
    shift
done