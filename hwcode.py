#!/usr/bin/python3
# SPDX-FileCopyrightText: 2024 Yusuke Matsumoto s23c1134bg@s.chibakoudai.jp
# SPDX-License-Identifier: BSD-3-Clause
import sys

def main():
    # 標準入力からの読み取り
    input_text = sys.stdin.read().strip()

    if input_text:
        print(f"--------------------神は言っている--------------------")
        print(input_text)
        print("-------------------------と…-------------------------")
    else:
        print("神は何も語らなかった…")

if __name__ == "__main__":
    main()

