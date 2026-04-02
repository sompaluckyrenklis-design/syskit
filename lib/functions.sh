#!/bin/bash

# Affiche l'espace disque de tous les montages lisibles
disk_usage() {
  echo "=== Utilisation disque ==="
  df -h | sort -k5 -rn
}

# Affiche les N premiers processus par consommation CPU
# Usage : top_processes [N]
top_processes() {
  local n=${1:-10}
  echo "=== Top $n processus (CPU) ==="
  ps aux --sort=-%cpu | head -n $((n + 1))
}

# Cherche les fichiers > SIZE Mo dans DIR
# Usage : find_large_files <dir> <size_mo>
find_large_files() {
  local dir=${1:-.}
  local size=${2:-100}
  echo "=== Fichiers > ${size}Mo dans $dir ==="
  find "$dir" -type f -size +${size}M -exec ls -lh {} \;
}
