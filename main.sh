#!/usr/bin/env bash

while true; do
    echo "======================="
    echo "1 - Ver IP"
    echo "2 - Ver Rotas"
    echo "3 - Ver usuário"
    echo "4 - Ver uso de disco"
    echo "======================="

    read -p "Escolha uma opção (1-4): " comando

    case "$comando" in
        1) ip a ;;
        2) ip route ;;
        3) whoami ;;
        4) df -h ;;
        *) 
            echo "Opção inválida!"
            continue
            ;;
    esac

    echo ""
    read -p "Deseja executar novamente? (s/n): " resposta

    resposta=$(echo "$resposta" | tr 'A-Z' 'a-z')

    if [[ "$resposta" != "s" ]]; then
        echo "Saindo..."
        break
    fi

    echo ""
done
