#!/bin/bash
# SPDX-FileCopyrightText: 2024 Yusuke Matsumoto s23c1134bg@s.chibakoudai.jp
# SPDX-License-Identifier: BSD-3-Clause

# スクリプト実行時にエラーが発生した場合に即終了
set -e

# テスト対象スクリプト
SCRIPT="hwcode"

# テストケース1: 通常の1行入力
if ! echo "こんにちは、世界！" | python3 "$SCRIPT" | grep -q "こんにちは、世界！"; then
    echo "テストケース1: 失敗 - 1行入力の結果が期待通りではありません"
    exit 1
fi

# テストケース2: 複数行入力
if ! echo -e "行1\n行2\n行3" | python3 "$SCRIPT" | grep -q "行1" ||
   ! echo -e "行1\n行2\n行3" | python3 "$SCRIPT" | grep -q "行2" ||
   ! echo -e "行1\n行2\n行3" | python3 "$SCRIPT" | grep -q "行3"; then
    echo "テストケース2: 失敗 - 複数行入力の結果が期待通りではありません"
    exit 1
fi

# テストケース3: 空入力
if ! echo "" | python3 "$SCRIPT" | grep -q "神は何も語らない… 　かの哲学者ニーチェは言った　「神は死んだ」と…"; then
    echo "テストケース3: 失敗 - 空入力の結果が期待通りではありません"
    exit 1
fi

# すべてのテストが成功した場合
echo "すべてのテストが成功しました！"

