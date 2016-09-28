#!/usr/bin/perl
#
use 5.010;
use strict;
use warnings;
use autodie;

$|=1;

sub main {
    my $input = "/home/derrick/downloads/mymanjeeves.txt";

    open INPUT, '<', $input or die "file $input not found\n";
    
    while (my $line =  <INPUT>) {
        if ($line =~ /(\bI\b )(\w+)/) { #captures words that follow I
        
        print "$2\n"; #prints second capture group
        }

    
    
    }



    close INPUT;
}


&main();
