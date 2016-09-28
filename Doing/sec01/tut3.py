#!/usr/bin/perl

use strict;
use warnings;
use LWP::Simple;


sub main {  
    
    print "downloading...\n";
#    print get("http://www.pilatesshanghai.com"); 
    getstore("http://www.pilatesshanghai.com", "pilates.html"); 
    print "Finished\n";
        
        
        
        
        
}

main();
