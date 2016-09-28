#!/usr/bin/perl
#
$_ = "This is a long sentence With SOME capital leTTers and a second long sentence.";

s/(long)/\u\L$1/g;

print "$_\n";
