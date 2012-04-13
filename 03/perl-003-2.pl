#!/usr/bin/env perl
use utf8;
use strict;
use warnings;

binmode STDIN,  ":utf8";
binmode STDOUT, ":utf8";
binmode STDERR, ":utf8";


# 1 .. 36
# 15の倍数 "Fizz Buzz"
# 5の倍数  "Buzz"
# 3の倍数  "Fizz"
# それ以外 数値

my $end;
while (1) {
  print "FizzBuzz問題です。数字を入力してください>>>";
  chomp($end = <STDIN>);
  
  if ( $end <= 0 ) {
    print "0以下の数値は入力できません。\n";
  }
  else {
    last;
  }
}

if ( $end >= 100 ) {
#  die;
  exit;
}

my @input;
for my $num ( 1 .. $end ) {
  if ( $num % 15 == 0 ) {
    push @input, "Fizz Buzz";
  }
  elsif ( $num % 5 == 0 ) {
    push @input, "Buzz";
  }
  elsif ( $num % 3 == 0 ) {
    push @input, "Fizz";
  }
  else {
    push @input, $num;
  }
}

print join ", ", @input;
print "\n";

