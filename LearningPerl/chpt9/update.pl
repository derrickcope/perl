#!/usr/bin/perl -w
#
use strict;

chomp(my $date = localtime);
$^ = ".bak";

while (<>)  {
    s/^Author:.*/Author: Randall L. Schwartz/;




    print;
}
