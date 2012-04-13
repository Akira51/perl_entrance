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

my $max = 36;

while (1) {
  print "FizzBuzz問題です。数字を入力してください>>>";
  chomp( my $input = <STDIN> );
  
  if ( $input <= 0 ) {
    print "0以下の数値は入力できません。\n";
  }
  else {
    $max = $input;
    last;
  }
}


my @answer;
for my $num ( 1 .. $max ) {
  if ( $num % 15 == 0 ) {
    push @answer, "Fizz Buzz";
  }
  elsif ( $num % 5 == 0 ) {
    push @answer, "Buzz";
  }
  elsif ( $num % 3 == 0 ) {
    push @answer, "Fizz";
  }
  else {
    push @answer, $num;
  }
}

print join ", ", @answer;
print "\n";
