#!/usr/bin/env bash
set -euo pipefail

root_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
config_file="$root_dir/libs/hbb_common/src/config.rs"

if grep -q '__PENDENTE_CHAVE_PUBLICA_SERVIDOR__' "$config_file"; then
  echo "ERRO: a chave pública do servidor ainda não foi configurada." >&2
  exit 2
fi

grep -q 'remoto.i9vando.com.br' "$config_file"
grep -q 'I9VANDO' "$config_file"
test -s "$root_dir/res/icon.png"
test -s "$root_dir/res/mac-icon.png"

echo "Pré-requisitos de marca e servidor validados."
