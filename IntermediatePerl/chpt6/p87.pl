#! /usr/bin/env perl
##############################################################################################
## Short description for p87.pl                                                               
##                                                                                
##                                                                                          
##                                                                                         
##############################################################################################
## Author derrick cope <derrick(at)thecopes.me>                                                  
## Version 0.1                                                         
## Copyright (C) 2017 derrick cope <derrick(at)thecopes.me>                            
## Modified On 2017-01-07 17:36                                                                      
## Created  2017-01-07 17:36                                                                        
##############################################################################################
use strict;
use warnings;
use 5.024;
use Data::Dumper;

my @x = ( 5, 3, 1, 8, 10, 2, );
my @y = ( 2, 1, 7, 4, 12, 7, );

my @bigger_index = grep {
    if ( $_ > $#y or $x[$_] > $y[$_] ) {
        1;
    } else {
        0;
    }
} 0..$#x;

my @bigger = @x[@bigger_index];

print Dumper \@bigger_index;
