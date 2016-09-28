#!/usr/bin/perl


print "input string\n";
chomp($first = <STDIN>);

print "input number to print\n";
chomp($second = <STDIN>);

print "$first\n" x $second;
