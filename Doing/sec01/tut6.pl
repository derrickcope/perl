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
    
     
    
    my $output = 'output.txt';

    open OUTPUT, '>', $output or die "can't create $output.\n";
    
   

    
    
    
    
    
    while (my $line =  <INPUT>) {
        
        if ($line =~ s/\byou\b/You/ig) {
        
            
            
        print OUTPUT $line;
        }

    
    
    }
 
   

    
    
    
   
        
  
        

    
    
    


    close INPUT;
    close OUTPUT;
}


&main();
