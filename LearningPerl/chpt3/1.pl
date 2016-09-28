#!/usr/bin/perl
#
#read STDIN into array and print in reverse order
#

chomp(@input = <STDIN>);
@input = reverse(@input);


print "@input\n";

