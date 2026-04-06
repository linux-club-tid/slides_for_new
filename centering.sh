#!/usr/bin/env bash

# 端末サイズ取得
rows=$(tput lines)
cols=$(tput cols)

# 標準入力を配列に格納
lines=()
while IFS= read -r line; do
  lines+=("$line")
done

# ANSIエスケープシーケンスを除去して最大表示幅を計算
max_len=$(printf '%s\n' "${lines[@]}" |
  sed -E 's/\x1b\[[0-9;]*[mGKHJF]//g' |
  wc -L)

line_count=${#lines[@]}
col_pad=$(((cols - max_len) / 2))

# 1行目は最後にピリオドのついた空白行として出力
printf "%*s.\n" "$((cols - 1))" ""

# 左パディング
left_pad=$(printf "%*s" "$col_pad" "")

# コンテンツ行（横中央のみ）
for line in "${lines[@]}"; do
  printf "%s%s\n" "$left_pad" "$line"
done
