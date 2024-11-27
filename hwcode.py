#!/usr/bin/python3
# SPDX-FileCopyrightText: 2024 Yusuke Matsumoto s23c1134bg@s.chibakoudai.jp
import sys

filename = "godsmsg.txt"

with open(filename, "w", encoding="utf-8") as file:
    print("文章を入力してください。改行も出来ます。（終了するには空行を入力）:")

    for line in sys.stdin:
        line = line.strip()
        if line == "":
            break
        file.write(line + "\n")

print(f"入力された内容は '{filename}' に保存されましたよ。")

