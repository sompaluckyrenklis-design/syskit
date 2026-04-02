#!/bin/bash

# Navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ll='ls -lah --color=auto'
alias la='ls -A'

# Système
alias meminfo='free -h'
alias cpuinfo='lscpu | grep -E "Model name|CPU\(s\)|MHz"'
alias ports='ss -tulnp'

# Sécurité
alias rm='rm -i'
