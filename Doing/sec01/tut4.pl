#!/usr/bin/perl
#
use strict;
use warnings;

sub main {

    
    my @files = (
        '/home/derrick/code/perl/Bydoing/sec01/test01',
        '/home/derrick/code/perl/Bydoing/sec01/pilates.html',
        '/home/derrick/code/perl/Bydoing/sec01/test02',
    );
    
    foreach (@files) {
        if ( -f $_ ) {

        print "Found file $_\n";
        }    
    else {
        
        print "Not found $_\n"; 
    
    }


    }    
}


&main();
