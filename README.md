# Homework
23C1134_ロボットシステム学課題提出用

# 課題コマンド(hwcode.py, god.py)
![test](https://github.com/MatsU-CIT/Homework/actions/workflows/test.yml/badge.svg)


## 使い方-神のお告げ
- 好きな文章を神様に言わせてやれるプログラムとなっております。

### 導入方法
- ①当リポジトリを以下のようにクローンします。  
```
git clone https://github.com/MatsU-CIT/Homework.git
```
- ②ディレクトリに移動します。  
```
cd Homework  
```
- ③lsで全ファイルがディレクトリ内にあることを確認したら、後述「簡単な使い方」に沿って運用してみましょう。  
### 起動手順
- 例えば、最初に```hwcode.py```(お告げ入力用のファイル)を起動する場合、  
```
chmod +x hwcode.py
```  
で実行権限を付与し  
```
./hwcode.py  
```
で実行出来ます。  
他のファイルも同様に起動することが出来ます。  
この操作以降ファイルを実行する場合は```./ファイル名```で大丈夫です。  
### 簡単な使い方
- ①```./hwcode.py```でお告げ入力用のプログラムを実行し、文章を入力します。  
  改行も可能ですので長文でも構いません。  
- ②```./god.py```で実際に神様が先ほど入力した文章を喋ってくれます。  
- ※①で入力した文章を保存・出力するファイルである  
  ```godsmsg.txt```がディレクトリ内に存在しないと  
  エラーコードを出力する仕様となっております。  

## 必要なソフトウェア
- Python
  - テスト済みバージョン: 3.7~3.11

## テスト環境
- Ubuntu 20.04 on Windows  

## ライセンス
- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．

- このパッケージのコードは，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
    - [ryuichiueda/my_slides robosys2024](https://github.com/ryuichiueda/my_slides/tree/master/robosys_2024)
- © 2024 Yusuke Matsumoto
