# Homework
23C1134_ロボットシステム学課題提出用

# 課題コマンド(hwcode)
[![License](https://img.shields.io/badge/License-BSD_3--Clause-blue.svg)](https://opensource.org/licenses/BSD-3-Clause)
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
  
### 簡単な使い方
- ①```echo XXX | ./hwcode```でお告げ入力用のプログラムを実行します。  
この時、XXXの部分に好きな一言を入力します。  
- ②実際に神様が①で入力した一言を喋ってくれます。  
XXXの部分に何も入力せずに上記コマンドを実行すると、別の実行結果が出力されます…  
実際に試してみましょう…  

- +α  
```echo -e "XXX\nYYY\nZZZ | ./hwcode"```(XXX,YYY,ZZZに任意の文章)  
と入力し実行すると、改行された文章を出力することも可能です。  

## 必要なソフトウェア
- Python
  - テスト済みバージョン: 3.7~3.11

## テスト環境
- Ubuntu 22.04 on Windows  

## ライセンス
- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．

- このパッケージのコードの一部は，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
    - [ryuichiueda/my_slides robosys2024](https://github.com/ryuichiueda/slides_marp/tree/master/robosys2024)

  © 2024 Yusuke Matsumoto
