#!/bin/bash

centering() {
  # 標準入力（パイプ）がある場合はそれを読み、なければ第1引数を使う
  # if [ -t 0 ] は「標準入力が端末（キーボード）からか」を判定します
  if [ -t 0 ]; then
    input="$1"
  else
    input=$(cat)
  fi

  window_width=$(tput cols)

  for i in $(seq 1 $window_width); do
    printf "─"
  done
}

# 実行
echo "Hello" | centering
