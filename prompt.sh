#!/usr/bin/env bash
# Usage: ./prompt.sh "your rough prompt here"
# Optimizes the prompt using Claude then runs it via CLI

RAW="$*"

if [ -z "$RAW" ]; then
  echo "Usage: ./prompt.sh \"your prompt\""
  exit 1
fi

OPTIMIZER="Rewrite this prompt to be concise, token-efficient, and unambiguous while preserving full intent. Output only the rewritten prompt, nothing else: $RAW"

echo "Optimizing prompt..."
OPTIMIZED=$(claude -p "$OPTIMIZER")

echo ""
echo "Optimized: $OPTIMIZED"
echo ""
echo "Running..."
claude -p "$OPTIMIZED"
