#!/usr/bin/perl
#
use 5.010;
use strict;
use warnings;
use autodie;

$|=1;

sub main {
    my $file = "/home/derrick/downloads/mymanjeeves.txt";

    open INPUT, '<', $file or die "file $file not found\n";
    
    while (my $line =  <INPUT>) {
        if ($line =~ /\begg\b/) {
        
        print $line;
        }

    
    
    }



    close INPUT;
}


&main();
