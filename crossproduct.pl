#!usr/bin/perl
#crossproduct.pl (a,b,c) (x,y,z)
use strict;
use warnings;

&crossproduct(@ARGV);

sub crossproduct() {
  my @tupleOne = split(/[,]/, &removeParens($_[0]));
  my @tupleTwo = split(/[,]/, &removeParens($_[1]));

  #print $tupleOne[1];
  my @product;
  $product[0] = $tupleOne[1] * $tupleTwo[2] - $tupleOne[2] * $tupleTwo[1];
  $product[1] = $tupleOne[2] * $tupleTwo[0] - $tupleOne[0] * $tupleTwo[2];
  $product[2] = $tupleOne[0] * $tupleTwo[1] - $tupleOne[1] * $tupleTwo[0];

  foreach(@product) {
    print "[$_]\n";
  }

}

sub removeParens() {
  $_[0] =~ s/[()]//g;
  return $_[0];
}
