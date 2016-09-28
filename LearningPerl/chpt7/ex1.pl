#!/usr/bin/perl
#
use autodie;
use 5.010;

open FRED, '<', 'fred.txt';
#chomp(@array =  <FRED>);
#foreach (@array) 
#{
#    print $_ if /Fred/;
#}
#
while (<FRED>) {
    if (/f|Fred/) {
        print;
    }
}

