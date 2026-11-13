#!/usr/bin/env bash
# Structural WIT check used by the shared CI workflow.
set -euo pipefail

test -s wit/calculator.wit
grep -q '^package ' wit/calculator.wit
grep -q '^interface ' wit/calculator.wit
grep -q '^world ' wit/calculator.wit
echo "wit checks ok"
