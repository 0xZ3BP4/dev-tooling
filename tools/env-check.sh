#!/usr/bin/env bash
# env-check.sh - verify basic dev tools available
set -e
echo "Checking dev environment..."
command -v git >/dev/null || { echo "git missing"; exit 1; }
command -v python3 >/dev/null || { echo "python3 missing"; exit 1; }
python3 -c "import sys; print('python', sys.version.split()[0])"
echo "All good."
