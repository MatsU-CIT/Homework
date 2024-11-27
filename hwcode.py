#!/usr/bin/python3
#!/usr/bin/bash
# SPDX-FileCopyrightText: 2024 Yusuke Matsumoto s23c1134bg@s.chibakoudai.jp
filename = "godsmsg.txt"

with open(filename, "w", encoding="utf-8") as file:
    print("文章を入力してください。改行も出来ます。（終了するには空行を入力）:")

    while True:
        line = input()
        if line == "":
            break
        file.write(line + "\n")

print(f"入力された内容は '{filename}' に保存されました。")
