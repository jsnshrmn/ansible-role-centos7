#!/usr/bin/env bash

# Ensures CPU steal time is below specified percentage before executing
# commands via bash.

if [ -z "$1" ]; then
  cat <<USAGE
  Ensures CPU steal time is below specified percentage before executing task.
  Usage: cpu_steal_check.sh \$steal_percent_threshold \$command [\$command args]
USAGE

  exit 1;
fi

if [ -z "$2" ]; then
  cat <<USAGE
  Ensures CPU steal time is below specified percentage before executing task.
  Usage: cpu_steal_check.sh \$steal_percent_threshold \$command [\$command args]
USAGE

  exit 1;
fi

read cpu user nice system idle iowait irq softirq steal guest guest_nice< /proc/stat
total=$(($user+$nice+$system+$idle+$iowait+$irq+$softirq+$steal+$guest+$guest_nice))
steal_percent=$((100*$steal/$total))

if [[ $steal_percent -gt $1 ]]; then
  echo "ERROR: CPU steal ${steal_percent}%. Skipping task."
  exit 1
fi

bash -c "${@:2}"
