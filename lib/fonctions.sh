# Affiche un résumé système : OS, kernel, uptime, RAM
sys_summary() {
  echo "=== Résumé système ==="
  echo "OS     : $(lsb_release -d | cut -f2)"
  echo "Kernel : $(uname -r)"
  echo "Uptime : $(uptime -p)"
  echo "RAM    : $(free -h | awk '/Mem:/{print $3 " / " $2}')"
}
