#!/usr/bin/env bash
set -euo pipefail

echo "I9VANDO Suporte Remoto — diagnóstico do servidor"
echo "Data: $(date -Is)"
echo "Host: $(hostname)"
echo "Sistema: $(uname -srmo)"
echo "Arquitetura: $(uname -m)"
echo

echo "Memória:"
free -h 2>/dev/null || true
echo

echo "Disco raiz:"
df -h / | tail -n 1
echo

if command -v docker >/dev/null 2>&1; then
  docker --version
  docker compose version
else
  echo "ERRO: Docker não encontrado."
  exit 2
fi

echo
echo "Portas RustDesk já ocupadas:"
ss -lntup 2>/dev/null | grep -E ':(21115|21116|21117|21118|21119)\b' || echo "Nenhuma."

echo
echo "Requisitos externos ainda necessários:"
echo "- DNS remoto.i9vando.com.br apontando para o IP público correto"
echo "- Encaminhamento TCP 21115-21119 para este Ubuntu"
echo "- Encaminhamento UDP 21116 para este Ubuntu"
echo "- Regras equivalentes no firewall do roteador, aaPanel e Ubuntu"
