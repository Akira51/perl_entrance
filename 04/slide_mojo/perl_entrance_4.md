# ![Perl入学式](/images/perl-entrance_t.png)
<!-- data-scale="0.5" -->

----------

# Perl入学式 #4

<http://www.perl-entrance.org>

* 日時
    * 2012年4月15日（日） 13:00 - 18:00
* 会場
    * 株式会社Joe'sウェブホスティング
    * <http://www.joeswebhosting.net>

----------

## Perl入学式について

* Perl入学式（<http://www.perl-entrance.org>）は、プログラミング未経験者からPerl初心者を対象としたワークショップです
* 公式Twitter
    * [@Perl_Entrance](http://twitter.com/perl_entrance)
* 公式ハッシュタグ
    * \#Perl入学式

----------

## 会場について

* 今回のPerl入学式は「Joe'sオープンソースJelly」の一環ということで、株式会社Joe'sウェブホスティング（<http://www.joeswebhosting.net>）様より特別に会場をお借りしています
* この場をお借りしてお礼申し上げます

----------

## ロゴについて

![Perl入学式](/images/perl-entrance_t_300.png)

* 横山陽平さん（<http://yokoyamayohei.com/>）にデザインしていただきました
* この場をお借りしてお礼申し上げます

----------

## IT勉強会スタンプラリー

![IT勉強会スタンプラリー](/images/it-stamp.png)

* Perl入学式は、IT勉強会スタンプラリー（<http://it-stamp.jp/>）に参加しています
* 今回のPerl入学式は、スタンプラリーの対象となる勉強会です
* 台紙は勉強会終了後にお渡しします

----------

## 喋ってる人

* 名前 ： 若林 信敬
* Twitter ： [@nqounet](http://twitter.com/nqounet)
* Facebook ： [nobutaka.wakabayashi](https://www.facebook.com/nobutaka.wakabayashi)
* 仕事 ： フリーエンジニア（IT系）
* 屋号 ： [IT Office 西宮原](http://www.nishimiyahara.net)

----------

## 今日やること（No.1/2）

* 前回までのおさらい（30分）
* perlbrewとcpanmをインストールしよう（10分）
* おさらい問題（10分）
* 休憩（10分） 〜 14:00（〜14:40）
* Perlを便利にする「モジュール」を使おう（20分）
* cpanmで「モジュール」をインストールしよう（10分）
* ウェブページを取得しよう（40分）
* 休憩（10分） 〜 15:20（〜15:35）

----------

## 今日やること（No.2/2）

* ウェブページのタイトルを抽出しよう（50分）
* ハッシュを使おう（20分）
* 休憩（10分） 〜 16:40（〜16:50）
* データの中身を確認する（10分）
* たくさん情報を持った変数を作ろう（40分）
* 練習問題（30分）

----------

# 前回までのおさらい
<!-- data-scale="0.5" -->

----------

## おさらいする内容

* お約束
* 画面に出力する
* 変数を使う
* 画面から入力する
* 条件分岐
* 配列
* 繰り返し

----------

## お約束

    #!/usr/bin/env perl
    use utf8;
    use strict;
    use warnings;
    
    binmode STDIN,  ":utf8"; # 標準入力
    binmode STDOUT, ":utf8"; # 標準出力
    binmode STDERR, ":utf8"; # 標準エラー出力

----------

## 画面に出力する

    print "Hello World\n"; # Hello World[改行]
    # 命令文の最後は「;」セミコロンを入力
    # 「#」の後ろはコメントになる
    # 「\n」は[改行]
    print 'Hello World\n'; # Hello World\n
    # シングルクォートの場合は「\n」がそのまま表示
    print "はろーわーるど\n"; # 日本語もOK

----------

## 変数を使う
### 代入と演算

    my $string;             # 「my」は変数の宣言
    $string = '文字列';      # 「=」は右の値を左の変数に代入
    print $string . "\n";   # 「.」は文字列の足し算（連結）
    my $num  = 123;         # 変数の宣言と代入は同時でもOK
    my $num2 = '123';       # 文字列として代入
    my $sum = $num + $num2; # 「+」は数値の足し算
    print "$num + $num2 は $sum です。\n"; # 答えは246

----------

## 画面から入力する

    print "値を入力してください>>>";
    my $input = <STDIN>;          # 入力待ち
    print "入力は $input です\n";   # [改行]を含む
    chomp($input);                # [改行]を取り除く
    print "入力は $input です\n";
    print "値2を入力してください>>>";
    chomp( my $input2 = <STDIN> ); # 入力待ちと同時でもOK
    # print "入力は$input2です\n";   # エラー
    print "入力2は${input2}です\n";  # 変数名:$input2
    print "入力1は${input}2です\n";  # 変数名:$input

----------

## 条件分岐
### 数値として比較（基本）

    print "値を入力してください>>>";
    chomp( my $in = <STDIN> );
    if ( $in == 0 ) {
      # $in == 0 が「真」の場合
      print "入力値${in}は0です\n";
    }
    else {
      # $in == 0 が「偽」の場合
      print "入力値${in}は0ではありません\n";
    }

----------

## 条件分岐
### 数値として比較（関係演算子一覧）

    my $x = 123;
    my $y = 123;
    if ( $x == $y ) { print "$x と $y は同じ\n";    }
    if ( $x != $y ) { print "$x と $y は違う\n";    }
    if ( $x >  $y ) { print "$x は $y より大きい\n"; }
    if ( $x <  $y ) { print "$x は $y より小さい\n"; }
    if ( $x >= $y ) { print "$x は $y 以上\n";      }
    if ( $x <= $y ) { print "$x は $y 以下\n";      }

----------

## 条件分岐
### 数値として比較（特殊）

    my $result = $x <=> $y;  # $x <=> $y の結果を代入
    if ( $result == 0 ) {    # 条件１
      print "$x と $y は同じ\n";
    }
    elsif ( $result < 0 ) {  # 条件２
      print "$x は $y より小さい\n";
    }
    else {                   # すべての条件に当てはまらない
      print "$x は $y より大きい\n";
    }

----------

## 条件分岐
### 文字列として比較（基本）

    print "値を入力してください>>>";
    chomp( my $in = <STDIN> );
    if ( $in eq 'a' ) {
      # $in eq 'a' が「真」の場合
      print "入力値${in}は'a'です\n";
    }
    else {
      # $in eq 'a' が「偽」の場合
      print "入力値${in}は'a'ではありません\n";
    }

----------

## 条件分岐
### 文字列として比較（関係演算子一覧）

    my $x = 'xyz';
    my $y = 'xyz';
    if ( $x eq $y ) { print "$x と $y は同じ\n";    }
    if ( $x ne $y ) { print "$x と $y は違う\n";    }
    if ( $x gt $y ) { print "$x は $y より大きい\n"; }
    if ( $x lt $y ) { print "$x は $y より小さい\n"; }
    if ( $x ge $y ) { print "$x は $y 以上\n";      }
    if ( $x le $y ) { print "$x は $y 以下\n";      }

----------

## 条件分岐
### 文字列として比較（特殊）

    my $result = $x cmp $y;   # $x cmp $y の結果を代入
    if ( $result == 0 ) {     # 条件１
      print "$x と $y は同じ\n";
    }
    elsif ( $result < 0 ) {   # 条件２
      print "$x は $y より小さい\n";
    }
    else {                    # すべての条件に当てはまらない
      print "$x は $y より大きい\n";
    }

----------

## 条件分岐
### 論理演算子一覧

    my $x = 1;
    my $y = 2;
    if ( $x == 1 && $y == 2 ) {
      print "$x は 1 かつ $y は 2 です\n";
    }
    if ( $x == 2 || $y == 2 ) {
      print "$x は 2 または $y は 2 です\n";
    }
    if ( ! $y == 1 ) {
      print "$y は 1 ではありません\n";
    }

----------

## 配列
### 配列の基本

    my @array = ('a', 'b', 'c'); # 配列の宣言と代入
    print "$array[0]\n";  # a[改行] : 最初の要素
    print "$array[1]\n";  # b[改行] : 2つめの要素
    print "$array[-1]\n"; # c[改行] : 最後の要素
    print "@{array}\n";  # a b c[改行] : 中身を表示
    print '@{array}\n';  # @{array}\n : 展開されない
    my $array = @array;  # スカラ変数と同じ名前でもOK
    print "$array\n";    # 3[改行] : 配列の要素数

* 添字は「`[]`（ブラケット）」を用いる

----------

## 配列
### 配列の操作（No.1/2）

    my @empty_array = ();
    my @defined_only;
    my @array = ('a', 'b', 'c');
    push    @array, '最後';    # 最後の要素に加える
    unshift @array, '最初';    # 最初の要素に加える
    print "@array\n";         # 最初 a b c 最後[改行]
    my $pop   = pop   @array; # 最後の要素を取り出す
    my $shift = shift @array; # 最初の要素を取り出す
    print "@array\n";         # a b c[改行]
    print "$pop\n";           # 最後[改行]
    print "$shift\n";         # 最初[改行]

----------

## 配列
### 配列の操作（No.2/2）

    my @array = ('a', 'b', 'c');
    my @array2 = reverse(@array);  # 要素を逆並びにする
    print "@array2\n";             # c b a[改行]
    my @array3 = sort(@array2);    # 要素を順序良く並べる
    print "@array3\n";             # a b c[改行]
    my $str = join(":", @array);   # 要素を連結する
    print "$str\n";                # a:b:c[改行]
    my @array4 = split(/:/, $str); # 文字列を分割する
    print "@array4\n";             # a b c[改行]

----------

## 繰り返し
### for文

    for my $i (1 .. 10) { # 1 から 10 まで
      print "$i\n"; # 1[改行]2[改行]3[改行]...
    }
    my @array = ('a', 'b', 'c'); # 配列を定義
    for my $item ( @array ) {    # 配列の要素
      print $item . "\n"; # a[改行]b[改行]
      if ($item eq 'b') { # $itemが「b」という文字列の場合
      last;             # ループを抜ける（終了する）
      }
    }

----------

## 繰り返し
### while文

    my $perl = '嫌い';
    my $like = '好き';
    while ( $perl ne $like ) {
      # 条件が真（$perl と $like が違う）の場合はループ内へ
      print "Perlは${like}ですか？[y/N]>>>";
      chomp(my $in = <STDIN>);
      if ( $in eq 'y' || $in eq 'Y' ) {
        $perl = $like;
      }
    }
    # 条件が偽の場合はループの外へ
    print "Perlは${perl}ですよね〜。\n";

----------

# perlbrewとcpanmをインストールしよう
<!-- data-scale="0.5" -->

----------

## インストールしてありますよね？

----------

## 開発環境の構築
### ModernなPerlの開発環境の構築方法

* <http://www.perl-entrance.org/p/modernperl20123.html>
* <http://www.perl-entrance.org> → 「ModernなPerlの開発環境の構築方法」
* Perl入学式ではperlbrew＋cpanmの環境を前提にしています

----------

## ModernなPerlの開発環境の構築方法

* 下準備
* perlbrewをインストール
* Perlをインストール
* cpanmをインストール
* perlbrewを使い際の注意事項

----------

# おさらい問題
<!-- class="break" -->
<!-- data-scale="0.5" -->

----------

## おさらい問題
### 標準入力（STDIN）から値を5つ受け取って「受け取った値の全て」と「数値としての最大値」を表示するプログラムを作ってみよう

## 回答方法

1. for文と配列を使って書いて実行してみよう
2. （余裕があれば）「数値としての最小値」も表示してみよう
3. （余裕があれば）数値として0が入力された場合にエラーを出すようにしよう
4. （それでも時間があれば）ハッシュタグ「#Perl入学式」でツイートしてみよう

----------

# 休憩
# 〜14:40
<!-- class="break" -->

----------

# Perlを便利にする「モジュール」を使おう
<!-- data-scale="0.5" -->

----------

## 最大値と最小値を求める

    use List::Util qw(max min);
    my @array = (2, 99, 87, 32, -11);
    my $max = max(@array);
    print $max . "\n"; # 99[改行]
    my $min = min(@array);
    print $min . "\n"; # -11[改行]

* 「`List::Util`」という配列関係の便利な関数が使えるモジュールを利用
* 詳しい説明：<http://search.cpan.org/dist/Scalar-List-Utils/lib/List/Util.pm>

#### おさらい問題を`max`や`min`を使って書きなおしてみよう！

----------

## モジュールとは

* Perlを便利にする機能（部品）のこと
* 「ライブラリ」と言ってもよいでしょう
* 最初からいくつかのモジュールはインストールされている（標準モジュール）
* モジュールはCPAN(シーパン：Comprehensive Perl Archive Network)という仕組みで管理されている

----------

## CPANとは

### Wikipediaより

> CPAN（シーパン、Comprehensive Perl Archive Network）とは、Perlのライブラリ・モジュールやその他のPerlで書かれたソフトウェアを集めた巨大なアーカイブで、世界中のサーバにその内容がミラーリングされている。再利用性・汎用性の高いモジュールが登録されており、Perlプログラマができるだけ車輪の再発明をせずに済むための支援環境となっている。登録モジュールの検索システムも提供されているため、Perlプログラマは望む機能を持ったモジュールを容易に入手することができる。

----------

## CPANとは

### SEARCH CPAN（ウェブサイト）

* <http://search.cpan.org>
* Perlで何か作る前に調べる
    * 既に誰かが作っているかもしれない
* 大きなモジュール（システム）から小さなモジュール（関数）まで揃っている

----------

## CPANとは
### ウェブ制作に使えるモジュール

* CGI
    * [CGI::Simple](http://search.cpan.org/dist/CGI-Simple/)
* Web Application
    * [Mojolicious](http://search.cpan.org/dist/Mojolicious/)
    * [Catalyst](http://search.cpan.org/dist/Catalyst-Runtime/)

----------

## CPANとは
### ソーシャル関係に使えるモジュール

* Twitterのボットを作りたい場合
    * [Net::Twitter::Lite](http://search.cpan.org/dist/Net-Twitter-Lite/)
* Facebookで何かしたい場合
    * [Facebook::Graph](http://search.cpan.org/dist/Facebook-Graph/)

----------

## CPANとは
### その他インターネット関係のモジュール

* 電子メールを送信したい場合
    * [Email::Sender](http://search.cpan.org/dist/Email-Sender/)
* ウェブページを解析したい場合
    * [Web::Scraper](http://search.cpan.org/dist/Web-Scraper/)
    * [Web::Query](http://search.cpan.org/dist/Web-Query/)

----------

## CPANとは
### セキュリティ関係のモジュール

* パスワードを適正に発行したい場合
    * [App::Genpass](http://search.cpan.org/dist/App-Genpass/)
    * [Data::SimplePassword](http://search.cpan.org/dist/Data-SimplePassword/)
* パスワードを安全に保存したい場合
    * [Crypt::SaltedHash](http://search.cpan.org/dist/Crypt-SaltedHash/)

----------

## CPANとは
### 日付・時間操作を便利にするモジュール

* 日付や時間を簡単に扱いたい場合
    * [Time::Piece](http://search.cpan.org/dist/Time-Piece/)
* 細かい時間を計測したい場合
    * [Time::HiRes](http://search.cpan.org/dist/Time-HiRes/)

----------

## CPANとは
### 地味に便利なモジュール

* 簡単にprintデバッグしたい場合
    * [Data::Dumper::Concise](http://search.cpan.org/dist/Data-Dumper-Concise/)
* エラーを簡単にトラップしたい場合
    * [Try::Tiny](http://search.cpan.org/dist/Try-Tiny/)

----------

## CPANとは
### コマンドラインを便利にするモジュール

* オプションを簡単に処理したい場合
    * [Getopt::Long](http://search.cpan.org/dist/Getopt-Long/)
    * [App::Options](http://search.cpan.org/dist/App-Options/)
* システムコマンドを簡単に使いたい場合
    * [IO::CaptureOutput](http://search.cpan.org/dist/IO-CaptureOutput/)
    * [Capture::Tiny](http://search.cpan.org/dist/Capture-Tiny/)

----------

## CPANとは
### データの読み書きに使えるモジュール

* ファイルを簡単に使いたい場合
    * [Path::Class](http://search.cpan.org/dist/Path-Class/)
* データベースを簡単に使いたい場合
    * [DBI](http://search.cpan.org/dist/DBI/)
    * [DBIx::Simple](http://search.cpan.org/dist/DBIx-Simple/)

----------

## CPANとは
### CPANを活用するのに便利な本

* <http://amzn.to/HaUNiS>
* オススメです

![CPANモジュールガイド](/images/cpanbook.png)

----------

## CPANとは
### cpan（コマンド）

* CPANを簡単に使うコマンドラインツール
* コマンドラインから検索やインストールが可能

----------

## CPANとは
### CPANについてのまとめ

* Perlを使いこなす ≒ CPANを使いこなす
* モジュールは毎日増えている → <http://search.cpan.org/recent>

----------

# cpanmで「モジュール」をインストールしよう
<!-- data-scale="0.5" -->

----------

## cpanmとは

* cpanコマンドのうち、モジュールのインストール機能に特化したコマンド
* Perlで動いているソフトウェア（モジュール）
* モジュール名は[App::cpanminus](http://search.cpan.org/dist/App-cpanminus/)
* 検索などはウェブサイトで行える
* Perl入学式ではcpanmを推奨

----------

## cpanmの使い方
### cpanmでモジュールをインストール

	$ cpanm LWP::UserAgent
	$ cpanm Data::Dumper::Concise

### インストールに失敗したら

    $ cpanm --notest --force LWP::UserAgent
    $ cpanm --notest --force Data::Dumper::Concise

* 行頭の`$`はターミナルであることを表しています。コマンドの一部ではありません

----------

# ウェブページを取得しよう
<!-- data-scale="0.5" -->

----------

## ウェブページを取得する
### サンプルコード

    use LWP::UserAgent;
    use URI;
    my $ua = LWP::UserAgent->new;
    $ua->agent('perl-entrance/0.04');
    my $url = URI->new('http://ja.wikipedia.org/wiki/Perl');
    my $res = $ua->get($url);
    die $res->status_line unless $res->is_success;
    my $html = $res->decoded_content;
    print "$html\n";

#### 書いて実行してみよう！（お約束も忘れずに）
#### 暇な人は「#Perl入学式」でツイートしよう！

----------

## コードの解説
### 何をしているのかだけを簡単に

* `perl-entrance/0.04`というユーザーエージェント名で<http://ja.wikipedia.org/wiki/Perl>にアクセス（getリクエスト）します。
* そのリクエストが成功していなかったら、エラーを表示して異常終了（`die`）します。
* 取得したHTMLを標準出力（STDOUT）に表示します。

----------

## より詳細な解説（No.1/4）

    use LWP::UserAgent;
    # 「LWP::UserAgent」というモジュールを使用
    use URI;
    # 「URI」というモジュールを使用

* 「モジュール名」というモジュールを使用するには「`use モジュール名`」とする
* 各モジュールはマニュアルがある
* コマンドラインで「`$ perldoc モジュール名`」
* [CPANのウェブサイト](http://search.cpan.org)でも見ることができる

----------

## より詳細な解説（No.2/4）

    my $ua = LWP::UserAgent->new;
    # $uaという変数を定義し、
    # LWP::UserAgentのオブジェクトを作成
    $ua->agent('perl-entrance/0.04');
    # $uaの「ユーザーエージェント」の名称を変更

* この場合の「`new`」は一般的にコンストラクタと呼ばれるメソッドです
* コンストラクタとは、オブジェクトを作成するクラスメソッドです
* 平たく言うと「`new`」することによってオブジェクトが作られます

----------

## より詳細な解説（No.3/4）

    my $url = URI->new('http://ja.wikipedia.org/wiki/Perl');
    # $urlという変数を定義し、URIのオブジェクトを作成。
    my $res = $ua->get($url);
    # $resという変数を定義
    # $uaが$urlにアクセス（getリクエスト）し、
    # その結果（レスポンス）を$resで受け取る
    die $res->status_line unless $res->is_success;
    # getリクエストが成功していなかったら（unlessはifの逆）
    # エラー出力にステータスを表示して異常終了（die）

* この場合「`$res->is_success`」が「偽」の場合「`die`」します

----------

## より詳細な解説（No.4/4）

    my $html = $res->decoded_content;
    # $htmlという変数を定義
    # レスポンスの中身をPerlの内部形式にdecodeする
    print "$html\n";
    # レスポンスの中身を標準出力に出力

* 「`$res->decoded_content`」では、返り値がPerlの内部形式（文字列）で得られる

----------

# 休憩
# 〜15:35
<!-- class="break" -->

----------

# ウェブページのタイトルを抽出しよう
<!-- data-scale="0.5" -->

----------

## ウェブページのタイトルを抽出する
### サンプルコード

    my $title;
    if ( $html =~ /<title>(.*?)<\/title>/ms ) {
      $title = $1;
    }
    else {
      print "titleタグがありません。\n";
    }
    print "$title\n";

#### 先ほどの続きで書いて実行してみよう！
#### 暇な人は（略

----------

## サンプルコードの解説
    
    my $title;
    if ( $html =~ /<title>(.*?)<\/title>/ms ) {
      # このif文の中身は「マッチング」と言います
      $title = $1;
      # マッチングの際にカッコを用いると、
      # その部分にマッチした文字列を利用できます
      # $titleに先ほどの「.*?」にマッチした文字列を代入します
    }
    # （以下略）

* 「`~`」は「チルダ（Tilda）」と言います

----------

## マッチング
### 簡単なマッチング

    my $str = 'yes';
    if ( $str =~ /y/ ) {
      print "$str には「y」が含まれています\n";
    }
    else {
      print "$str には「y」が含まれていません\n";
    }

#### 書いて実行してみよう！

----------

## マッチング
### パターンマッチング（正規表現）

    my $str = 'Yes';
    if ( $str =~ /[yY]/ ) { # [...]の中身のいずれか1文字にマッチ
      print "$str には「y」または「Y」が含まれています\n";
    }
    if ( $str =~ /y/i ) { # iオプションは大文字小文字を無視してマッチ
      print "$str には「y」または「Y」が含まれています\n";
    }

#### 書いて実行してみよう！

----------

## マッチング
### パターンマッチング（正規表現）の解説

* さらっと俯瞰する（クイックスタート）
    * <http://perldoc.jp/pod/perlrequick>
* チュートリアル
    * <http://perldoc.jp/pod/perlretut>
* 詳細な解説
    * <http://perldoc.jp/pod/perlre>

----------

## マッチング
### 「.*?」とは何だったのか？

* 「`.`」は、「`\n`」以外の任意の1文字にマッチ
* 「`*`」は、直前の文字の0回以上の繰り返しにマッチ
* 「`?`」は、直前の文字、または、空文字列にマッチ

----------

## マッチング
### マッチングのルール

    my $str = "<title>1<title>2</title>3</title>";
    $str =~ /<title>(.)<\/title>/;
    print "1番目のマッチ：$1\n";      # 2
    $str =~ /<title>(.*)<\/title>/;
    print "2番目のマッチ：$1\n";      # 1<title>2</title>3
    $str =~ /<title>(.*?)<\/title>/;
    print "3番目のマッチ：$1\n";      # 1<title>2

* ルール１：なるべく早くマッチする
* ルール２：なるべく長くマッチする（最長マッチ）

#### 書いて実行してみよう！

----------

## マッチング
### 「.*?」とは何だったのか？

* 組み合わせて別の意味がある
* 「`*?`」は、なるべく短くマッチする（最短マッチ）
* 「`.*?`」とは「\n以外の任意の文字になるべく短くマッチ」したい場合に使用する

----------

## マッチング
### \（バックスラッシュ）

    $str =~ /<title>(.)<\/title>/;

* この場合の「`\`（バックスラッシュ）」はエスケープ文字
* 次に続く文字をエスケープ（特殊な意味を消し去る）する
* 「`\/`」はスラッシュをエスケープしている

----------

## マッチング
### デリミタ（delimiter）について

    $str =~ m!<title>(.)</title>!;
    $str =~ m|<title>(.)</title>|;
    $str =~ m"<title>(.)</title>";
    $str =~ m{<title>(.)</title>};

* マッチングのデリミタ（区切り文字のこと、今の場合は「`/`」）は、「`m`」を用いると他の文字に変更できる

----------

## 脱線
### デリミタ（delimiter）について

    my $delimiter = 'デリミタ';
    my $str = "通常は\"のようにエスケープします。\n";
    $str .= qq|qqを使うとエスケープ"なし"で大丈夫。\n|;
            # ダブルクォート同等
    $str .= qq{変数（${delimiter}）も展開されます。\n};
    $str .= q!qだけの場合は、変数（${delimiter}）や\nも展開されません。!;
            # シングルクォート同等
    $str .= q|ただし、デリミタの文字（\|）を使う場合はエスケープが必要です。|;
    print "$str\n";

* クォーテーションもデリミタを変更できます

#### 書いて実行してみよう！

----------

## 脱線
### デリミタ（delimiter）について

    my $str = "<div class=\"apple\">iPhone</div>\n";

    my $str = qq{<div class="apple">iPhone</div>\n};

* どちらが好みですか？

----------

## さらに脱線

    $str .= 'str';
    # ↓と同じ意味
    $str  = $str . 'str';

* 「+=」「-=」「*=」「/=」などもあります
* 詳細な解説
    * <http://perldoc.perl.org/perlop.html>
* 詳細な解説（日本語版）
    * <http://perldoc.jp/pod/perlop>

----------

# ハッシュを使おう
<!-- data-scale="0.5" -->

----------

## ハッシュとは

* ハッシュ（hash）とは、配列の一種で、数値の代わりに文字列（キー）を使って値を参照するもの
* キーから値を連想するようになっているので「連想配列」とも呼ばれている

----------

## ハッシュとは
### 代入と出力（スカラー）

    my %nqounet; # 最初に「%」をつける
    $nqounet{'name'} = 'Nobutaka Wakabayashi';
    $nqounet{'born'} = '石川県';
    print "$nqounet{'name'}\n";
    print "$nqounet{'born'}\n";

* ハッシュの添字は「`{}`（ブレース、中括弧）」を用いる
* 添字付きのハッシュはスカラー変数と同じように使用できる

#### 右側を自分の情報に変えて書いて実行してみよう！

----------

## ハッシュとは
### 代入と出力（リスト）

    my %hash1 = ('one', 'two', 'three', 'four');
    my %hash2 = ('1', '2', '3', '4');
    print "%hash1\n"; # %hash1[改行]
    print %hash1; # threefouronetwo
    print "\n";
    print %hash2; # 1234
    print "\n";

* ハッシュは配列の一種
* 違う所：クォート内では展開されない、順不同、など

<!-- ハッシュをスカラコンテキストで評価すると、内部の状態が表示される（2/8とか） -->

#### 書いて実行してみよう！

----------

## ハッシュとは
### 代入と出力（よりハッシュらしく）

    my %hash  = (
      'key1' => 'value1', # '=>'はファットカンマ
      key2   => 'value2', # ほぼ「,（カンマ）」と同じ意味
      # 左側の値を文字列として解釈するので、クォートしなくてもよい
    );
    print "$hash{key1}\n";   # value1[改行]
    print "$hash{'key2'}\n"; # value2[改行]

* キーを添字にして値を参照できる
* 添字はクォートしなくても解釈してくれる

#### 書いて実行してみよう！

----------

## ハッシュとは
### 配列の不便そうなところ（無理矢理）

    my @nqounet = (
      'nqounet',
      '38',
      'Perl',
    );
    print "twitter : $nqounet[0]\n";
    print "age : $nqounet[1]\n";
    print "lang : $nqounet[2]\n";

* 配列の値の順序が何を意味しているのかを把握しておく必要がある

----------

## ハッシュとは
### ハッシュの便利そうなところ（無理矢理）

    my %nqounet = (
      twitter => 'nqounet',
      age     => '38',
      lang    => 'Perl',
    );
    for my $key ('twitter', 'age', 'lang') {
      print "$key : $nqounet{$key}\n";
    }

* キーと値はペアになっているため、好きな値を出すのが簡単
* 値の意味（何の値か）がソースコードを見て理解しやすい

----------

## ハッシュとは
### 中身を確認する方法

    my %nqounet = (
      twitter => 'nqounet',
      age     => '38',
      lang    => 'Perl',
    );
    while ( my ($key, $value) = each %nqounet ) {
      # 「each」はハッシュのキーと値をペアで返す
      # whileを組み合わせて、すべての中身が確認できる
      print "$key : $value\n";
    }

* 「`each`」はハッシュのキーと値をペアで返す

#### 書いて実行してみよう！

----------

# 休憩
# 〜16:50
<!-- class="break" -->

----------

# データの中身を確認する
<!-- data-scale="0.5" -->

----------

## データの中身を確認する

* 配列とかハッシュはデータを見るのが面倒
    * 配列はforを使ったループ
    * ハッシュはforとkeys、または、whileとeachを組み合わせてループ

----------

## 簡単に見る方法はないのか？

----------

## もちろん、あります！

----------

## 変数の中身を確認する

    use Data::Dumper::Concise; # Dumperという関数を生成
    
    my %nqounet = (
      twitter => 'nqounet',
      age     => '38',
      lang    => 'Perl',
    );
    print Dumper( \%nqounet );
    # 変数の前に「\（バックスラッシュ）」をつける（解説は後ほど）

#### 書いて実行してみよう！

----------

# たくさん情報を持った変数を作ろう
<!-- data-scale="0.5" -->

----------

## たくさんの情報を持ちたい
### やりたいこと

* メールアドレスやウェブサイトを変数に持ちたい
    * 名前
    * メールアドレス（2個）
    * ウェブサイト（3個）

----------

## たくさんの情報を持ちたい
### 配列を代入してみる

    use Data::Dumper::Concise;
    my @mails = (
      'nobu at nishimiyahara.net',
      'coworking at shin-osaka.in',
    );
    my @webs = (
      'http://nqou.net',
      'http://www.nishimiyahara.net',
      'http://www.shin-osaka.in',
    );
    my %nqounet = (
      name => 'nqounet',
      mail => @mails,
      web  => @webs,
    );
    print Dumper \%nqounet;

#### 書いて実行してみよう！

----------

## たくさんの情報を持ちたい
### 中身を確認する

    # 結果
    {
      "coworking at shin-osaka.in" => "web",
      "http://nqou.net" => "http://www.nishimiyahara.net",
      "http://www.shin-osaka.in" => undef,
      mail => "nobu at nishimiyahara.net",
      name => "nqounet"
    }

* エラーメッセージ ： Odd number of elements in hash assignment at ファイル名 行数

----------

## たくさんの情報を持ちたい
### ハッシュは配列の一種

    my @nqounet = ( # 「%」 を 「@」 に変更してみる
      name => 'nqounet',
      mail => @mails,
      web  => @webs,
    );
    print Dumper \@nqounet; # 「%」 を 「@」 に変更してみる
    # 配列の場合も変数の前に「\（バックスラッシュ）」をつける（解説は後ほど）

* ペアになっていないことを確認するため、配列として表示してみる

#### 変更して実行してみよう！

----------

## たくさんの情報を持ちたい
### 中身を確認する

    # 結果
    [
      "name",
      "nqounet",
      "mail",
      "nobu at nishimiyahara.net",
      "coworking at shin-osaka.in",
      "web",
      "http://nqou.net",
      "http://www.nishimiyahara.net",
      "http://www.shin-osaka.in"
    ]

* 配列はフラットに展開されていて、期待した階層構造になっていない

----------

## たくさんの情報を持ちたい
### 階層構造を作る

    my %nqounet = ( # 「@」 を 「%」 に戻す
      name => 'nqounet',
      mail => \@mails, # 変数の前に「\」をつける
      web  => \@webs,  # 変数の前に「\」をつける
    );
    print Dumper \%nqounet; # 「@」 を 「%」 に戻す

#### 変更して実行してみよう！

----------

## たくさんの情報を持ちたい

    # 結果
    {
      mail => [
        "nobu at nishimiyahara.net",
        "coworking at shin-osaka.in"
      ],
      name => "nqounet",
      web => [
        "http://nqou.net",
        "http://www.nishimiyahara.net",
        "http://www.shin-osaka.in"
      ]
    }

----------

## たくさんの情報を持ちたい
### Dumperを使わずに表示してみる

    for my $key ( keys %nqounet ) {
      print "$key : $nqounet{$key}\n";
    }
    # 結果（0x...の部分は違う場合もあります）
    web : ARRAY(0x7fe5108275e8)
    name : nqounet
    mail : ARRAY(0x7fe510827648)

#### 書いて実行してみよう！

----------

## リファレンス

* 「`$nqounet{mail}`」や「`$nqounet{web}`」の値は「リファレンス」と呼びます
* リファレンスを作成するには、変数（スカラー、配列、ハッシュ）の前に「`\`（バックスラッシュ）」をつけます
* リファレンスは「スカラー値」です
* 単純にprintすると「スカラー値」として値を表示します

----------

## 様々なリファレンス

    my $scalar = 'string';
    my @array  = ('a', 'b', 'c');
    my %hash   = (key1 => 'value1', key2 => 'value2');
    my $scalar_ref = \$scalar; # スカラーのリファレンス
    my $array_ref  = \@array;  # 配列のリファレンス
    my $hash_ref   = \%hash;   # ハッシュのリファレンス
    my $scalar_ref_direct = \'Perl';
    my $array_ref_direct  = +['d', 'e', 'f'];
                            # 「+」は省略可能
    my $hash_ref_direct   = +{ key => 'value' };
                            # 「+」は省略可能

#### 書いてprintしてみよう！

----------

## デリファレンス
### リファレンスをちゃんと表示する

    # 「$nqounet{mail}」は配列のリファレンス
    for my $mail ( @{$nqounet{mail}} ){
            # リファレンスを「@{...}」で囲う
        print "$mail\n";
    }

* リファレンスを「元の形式に戻す」ことを「デリファレンス」といいます

----------

## 様々なデリファレンス
### スカラー

    my $scalar     = 'string';
    my $scalar_ref = \$scalar; # スカラーのリファレンス
    print ${$scalar_ref};

* スカラーのリファレンスをデリファレンスするには、リファレンスを「**${...}**」で囲います

#### 書いて実行してみよう！

----------

## 様々なデリファレンス
### 配列

    my @array     = ('a', 'b', 'c');
    my $array_ref = \@array;        # 配列のリファレンス
    print join("\n", @{$array_ref}); # 配列全体をデリファレンス
    print $array_ref->[0];  # 配列のリファレンスの最初の要素
    print $array_ref->[1];  # 配列のリファレンスの2つめの要素
    print $array_ref->[-1]; # 配列のリファレンスの最後の要素

* 配列のリファレンスをデリファレンスするには、リファレンスを「**@{...}**」で囲います
* 配列のリファレンス内の一つの要素をデリファレンスする場合は「**->**（矢印演算子）」を使う

#### 書いて実行してみよう！

----------

## 様々なデリファレンス
### ハッシュ

    my %hash = ( key1 => 'value1', key2 => 'value2' );
    my $hash_ref = \%hash;
          # ハッシュのリファレンス
    for my $key ( keys %{$hash_ref} ) {
          # ハッシュ全体をデリファレンス
      print "$key : $hash_ref->{$key}\n";
          # ハッシュの要素を表示する
    }

* ハッシュのリファレンスをデリファレンスするには、リファレンスを「**%{...}**」で囲います
* ハッシュのリファレンス内の一つの要素をデリファレンスする場合は「**->**（矢印演算子）」を使う

#### 書いて実行してみよう！

----------

## Perlの変数について整理

* 「$str」のような「スカラー変数」は、スカラー値を1つ持つことができる
* 「@str」のような「配列」は、複数のスカラー値を持つことができる
* 「%str」のような「ハッシュ（連想配列）」は、配列の一種で、スカラー値に名前（キー）をつけて持つことができる

----------

## リファレンスについて整理

* リファレンスを作成するには、変数（スカラー、配列、ハッシュ）の前に「\（バックスラッシュ）」をつける
* 配列のリファレンスは「**+[...]**（ブラケット）」を使用する（「+」は省略可能）
* ハッシュのリファレンスは「**+{...}**（ブレース）」を使用する（「+」は省略可能）
* リファレンスを使用するには、デリファレンスが必要です
* デリファレンスするには、リファレンスを **${...}**、**@{...}**、**%{...}**で囲う、または、「**->**（矢印演算子）」を使用する

----------

## リファレンスは「スカラー値」

* 大事なので何度も言います
* リファレンスは「スカラー値」です
* つまり、スカラー値を持つことができる変数はリファレンスを持つことができる
* 配列のリファレンスを持つ配列のリファレンスや、ハッシュのリファレンスを持つ配列のリファレンスのハッシュのリファレンスのハッシュのリファ（略

----------

## 複雑なデータ構造
### 変数（ハッシュ）を定義

    my @mails = (
        'nobu at nishimiyahara.net',
        'coworking at shin-osaka.in',
    );
    my @webs = (
        'http://nqou.net',
        'http://www.nishimiyahara.net',
        'http://www.shin-osaka.in',
    );
    my %nqounet = (
        name => 'nqounet',
        mail => \@mails,
        web  => \@webs,
    );

#### 書いて実行してみよう！

----------

## 複雑なデータ構造
### Dumperを使わずにピンポイントで表示

    print $nqounet{web}->[2]; # http://www.shin-osaka.in
    # %nqounetの「web」というキーの値が配列のリファレンス
    # その配列のリファレンスをデリファレンスした3番目の値

    print $nqounet{mail}->[0]; # nobu at nishimiyahara.net
    # %nqounetの「mail」というキーの値が配列のリファレンス
    # その配列のリファレンスをデリファレンスした最初の値

#### 書いて実行してみよう！

----------

## もっと複雑なデータ構造
### Dumperを使わずにピンポイントで表示

    my %papix = (
      name => 'papix',
      mail => [],                   # 空の配列のリファレンス
      web  => ['http://papix.net'], # 配列のリファレンス
    );
    my $perl_entrance = { # ハッシュのリファレンス
      old_type => \%nqounet,
      new_type => \%papix,
    };
    print $perl_entrance->{new_type}->{web}->[0];
        # http://papix.net

#### 続けて書いて実行してみよう！

----------

## 省略の美学
### 「->（矢印演算子）」は部分的に省略可能

    print $nqounet{web}->[2];
    print $nqounet{web}[2];
    # ブレースとブラケットの間の矢印は省略できる

    print $perl_entrance->{new_type}->{web}->[0];
    print $perl_entrance->{new_type}{web}[0];
    # ブレース同士、ブラケット同士も同じ
    print $perl_entrance{new_type}{web}[0]; # エラー
    # %perl_entranceというハッシュの「new_type」をキーとする値を参照している

#### 書いて実行してみよう！

----------

## 変数（スカラー変数）のおさらい

    my $str = 'これは文字列です';    
    my $num = 123;
    print "文字列（ $str ）と数値（ $num ）\n";

----------

## 配列の使い方のおさらい

    my @array = ('a', 'b', 'c');
    print "$array[0]\n";
    print "@{array}\n";
    for my $item ( @array ) {
        print "$item\n";
    }

----------

## ハッシュの使い方のおさらい
    
    my %hash  = (
        key1 => 'value1',
        key2 => 'value2',
    );
    print "key1 : $hash{key1}\n";
    for my $key ( keys %hash ) {
        print "$key : $hash{$key}\n";
    }

----------

## 配列のリファレンス

    my $array_ref = +['a', 'b', 'c']; # 「+」は省略可能
    print "$array_ref->[0]\n";
    print "@{$array_ref}\n";
    for my $item ( @{$array_ref} ) {
        print "$item\n";
    }

----------

## ハッシュのリファレンス

    my $hash_ref  = +{ # 「+」は省略可能
        key1 => 'value1',
        key2 => 'value2',
    };
    print "key1 : $hash_ref->{key1}\n";
    for my $key ( keys %{$hash_ref} ) {
        print "$key : $hash_ref->{$key}\n";
    }

----------

# 練習問題
<!-- class="break" -->
<!-- data-scale="0.5" -->

----------

## 練習問題
### Dumperすると、以下のようになるような変数を作成してください

    {
      luigi => {
        color => "green",
        initial => "L"
      },
      mario => {
        color => "red",
        initial => "M"
      }
    }
