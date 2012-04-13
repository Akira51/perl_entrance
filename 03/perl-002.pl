#!/usr/bin/env perl
use utf8;
use strict;
use warnings;

binmode STDIN,  ":utf8";
binmode STDOUT, ":utf8";
binmode STDERR, ":utf8";


print "文字当てゲームスタート！\n";
my $answer = 'Perl';

my $count = 0;
my @input;
while (1) {
  $count++;
  print "入力してください>>>";
  chomp( my $in = <STDIN> );
  push @input, $in;
  if ($in eq $answer) {
    print "正解です。正解するまで $count 回入力しました。\n";
    print "正解までに入力した文字列は、";
    my @input2;
    for my $input (@input) {
      push @input2, qq{"$input"};
    }
    print join ", ", @input2;
    print "です。\n";
    last;
  }
  else {
    print "はずれです。";
    if ($in lt $answer) {
      print "$in は正解よりも辞書順で前です。\n";
    }
    else {
      print "$in は正解よりも辞書順で後ろです。\n";
    }
  }
}

