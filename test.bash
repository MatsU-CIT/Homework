#!/usr/bin/bash
# SPDX-FileCopyrightText: 2024 Yusuke Matsumoto s23c1134bg@s.chibakoudai.jp
#!/bin/bash

# テストスクリプトのエラーハンドリングを有効化
set -e
set -o pipefail

# テスト用の一時ファイルを設定
FILENAME="godsmsg.txt"
TEST_INPUT="test_input.txt"

# 仮の入力内容を準備
echo "テスト用の神のメッセージです。" > $TEST_INPUT

# hwcode.py のテスト
echo "=== hwcode.py のテストを開始します ==="
echo "テスト用入力を使ってスクリプトを実行中..."
python3 hwcode.py < $TEST_INPUT
if [[ -f "$FILENAME" ]]; then
    echo "ファイル '$FILENAME' が正常に作成されました。"
else
    echo "エラー: ファイル '$FILENAME' が作成されませんでした。"
    exit 1
fi

# 作成されたファイルの内容を確認
EXPECTED_OUTPUT=$(cat $TEST_INPUT)
ACTUAL_OUTPUT=$(cat $FILENAME)

if [[ "$ACTUAL_OUTPUT" == "$EXPECTED_OUTPUT" ]]; then
    echo "hwcode.py は正しく動作しました。"
else
    echo "エラー: 作成されたファイルの内容が期待値と異なります。"
    echo "期待値:"
    echo "$EXPECTED_OUTPUT"
    echo "実際の値:"
    echo "$ACTUAL_OUTPUT"
    exit 1
fi

# god.py のテスト
echo "=== god.py のテストを開始します ==="
python3 god.py > output.log
if grep -q "$EXPECTED_OUTPUT" output.log; then
    echo "god.py は正しく動作しました。"
else
    echo "エラー: god.py の出力が期待値と異なります。"
    echo "期待値:"
    echo "$EXPECTED_OUTPUT"
    echo "実際の出力:"
    cat output.log
    exit 1
fi

# 後処理
echo "テストが正常に完了しました。クリーンアップ中..."
rm -f $FILENAME $TEST_INPUT output.log

echo "すべてのテストが成功しました！"

