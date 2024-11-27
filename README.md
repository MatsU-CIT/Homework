# Homework
ロボットシステム学課題提出用

# 課題コマンド(hwcode.py)
![test](https://github.com/MatsU-CIT/Homework/actions/workflows/test.yml/badge.svg)


## 使い方-神のお告げ
好きな文章を神様に言わせてやれるプログラムとなっております。

### 導入方法
①当リポジトリを以下のようにクローンします。  
git clone git@github.com:MatsU-CIT/Homework.git  
②ディレクトリに移動します。  
cd Homework  
③lsで全ファイルがディレクトリ内にあることを確認したら、後述「簡単な使い方」に沿って運用してみましょう。  
### 起動手順
例えば、最初にhwcode.py(お告げ入力用のファイル)を起動する場合、  
chmod +x hwcode.py  
で実行権限を付与し  
./hwcode.py  
で実行出来ます。  
他のファイルも同様に起動することが出来ます。  
この操作以降ファイルを実行する場合は./ファイル名で大丈夫です。  
### 簡単な使い方
①./hwcode.pyでお告げ入力用のプログラムを実行し、文章を入力します。  
改行も可能ですので長文でも構いません。  
②./god.pyで実際に神様が先ほど入力した文章を喋ってくれます。  
※①で入力した文章を保存・出力するファイルである  
godsmsg.txtがディレクトリ内に存在しないと  
エラーコードを出力する仕様となっております。  

## 必要なソフトウェア
- Python
  - テスト済みバージョン: 3.7~3.10

## テスト環境
- Ubuntu 20.04 on Windows

- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．

- このパッケージは，aaa由来のコード（© 2024 Yusuke Matsumoto）を利用しています．
- このパッケージのコードは，下記のスライド（CC-BY-SA 4.0 by Yusuke Matsumoto）のものを，本人の許可を得て自身の著作としたものです．
    - [yusukematsumoto/myslides Homework](https://github.com/MatsU-CIT/Homework)
- © 2024 Yusuke Matsumoto
