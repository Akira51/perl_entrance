#!/usr/bin/env perl
use utf8;
use strict;
use warnings;

binmode STDIN,  ":utf8";
binmode STDOUT, ":utf8";
binmode STDERR, ":utf8";

my @nums;
# for my $i ( 1 .. 10 ) {
my $i = 0;
while (1) {
  $i++;
  print "${i}番目の数字を入力してください>>>";
  chomp( my $num = <STDIN> );
  if ($num eq 'end') {
    last;
  }
  else {
    push @nums, $num;
  }
}

my $sum = 0;
for my $num ( @nums ) {
  $sum += $num;
}

my $answer = join " + ", @nums;
# print "合計は $sum です。\n";
print "$answer = $sum です。\n";

