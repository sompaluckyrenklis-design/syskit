# syskit

Collection d'outils système Bash pour Linux.

## Fonctionnalités

- `disk_usage` : affiche l'espace disque trié par utilisation
- `top_processes [N]` : affiche les N processus les plus gourmands en CPU (défaut : 10)
- `find_large_files <dir> <taille_Mo>` : trouve les fichiers dépassant une taille donnée
- Alias pratiques : `ll`, `la`, `..`, `meminfo`, `cpuinfo`, `ports`, `rm` (sécurisé)

## Prérequis

- Linux (Ubuntu, Debian, Arch...)
- Bash >= 4.0

## Installation

\`\`\`bash
git clone https://github.com/TON_LOGIN/syskit.git
cd syskit
bash install.sh
source ~/.bashrc
\`\`\`

## Utilisation

\`\`\`bash
disk_usage               # affiche l'espace disque
top_processes 5          # top 5 processus CPU
find_large_files /home 50  # fichiers > 50 Mo dans /home
\`\`\`

## Structure du projet

\`\`\`
syskit/
├── lib/
│   ├── functions.sh   # fonctions Bash réutilisables
│   └── aliases.sh     # alias de commandes
├── install.sh         # script d'installation
└── README.md          # documentation
\`\`\`

## Auteur

sompaluckyrenklis-design — [GitHub](https://github.com/sompaluckyrenklis-design)
