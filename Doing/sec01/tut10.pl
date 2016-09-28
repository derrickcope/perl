#!/usr/bin/perl
#
use 5.010;
use strict;
use warnings;
use autodie;

$|=1;

sub main {
    my $input = "/usr/share/dict/cracklib-small";

    open INPUT, '<', $input or die "file $input not found\n";
    
    while (my $line =  <INPUT>) {
        if ($line =~ /(\b\w+o{2}\w+\b)/) { #captures 2 l's
        
        print "$1\n";
        }

    
    
    }



    close INPUT;
}


&main();
