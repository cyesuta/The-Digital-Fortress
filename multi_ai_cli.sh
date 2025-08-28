#!/bin/bash

# Multi-AI CLI 調用腳本
# 用法: ./multi_ai_cli.sh "工具名稱" "提示詞"

tool=$1
prompt=$2

case $tool in
  "gemini")
    gemini -p "$prompt"
    ;;
  "claude")
    claude -p "$prompt"
    ;;
  "cursor")
    cursor-agent -p "$prompt" -m "gpt-4"
    ;;
  "codex")
    codex exec "$prompt"
    ;;
  "qwen")
    qwen "$prompt"
    ;;
  "crush")
    crush "$prompt"
    ;;
  "all")
    echo "=== Gemini ==="
    gemini -p "$prompt"
    echo -e "\n=== Claude ==="
    claude -p "$prompt"
    echo -e "\n=== Qwen ==="
    qwen "$prompt"
    ;;
  *)
    echo "支援的工具: gemini, claude, cursor, codex, qwen, crush, all"
    ;;
esac