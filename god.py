#!/usr/bin/python3
# SPDX-FileCopyrightText: 2024 Yusuke Matsumoto s23c1134bg@s.chibakoudai.jp

filename = "godsmsg.txt"

try:

    with open(filename, "r", encoding="utf-8") as file:
        print(f"--------------------神は言っている--------------------")
        content = file.read()
        print(content)
        print("-------------------------と…-------------------------")
except FileNotFoundError:
    print(f"ファイル '{filename}' が見つからず、神は困惑している…")
