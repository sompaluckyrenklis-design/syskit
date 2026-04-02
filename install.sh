#!/bin/bash
set -e

INSTALL_DIR="$HOME/syskit"
BASHRC="$HOME/.bashrc"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "🔧 Installation de syskit..."

mkdir -p "$INSTALL_DIR"

# Copie des fichiers
cp "$SCRIPT_DIR/lib/functions.sh" "$INSTALL_DIR/"
cp "$SCRIPT_DIR/lib/aliases.sh"   "$INSTALL_DIR/"

if grep -q "syskit" "$BASHRC"; then
  echo "🔧 syskit est déjà présent dans $BASHRC, on ne modifie pas."
else
  echo "source $INSTALL_DIR/functions.sh" >> "$BASHRC"
  echo "source $INSTALL_DIR/aliases.sh"   >> "$BASHRC"
  echo "✅ Lignes source ajoutées dans $BASHRC"
fi

echo "🔧 Installation terminée ! Lancez : source ~/.bashrc"
