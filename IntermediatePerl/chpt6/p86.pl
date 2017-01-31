#! /usr/bin/env perl
##############################################################################################
## Short description for p86.pl                                                               
##                                                                                
##                                                                                          
##                                                                                         
##############################################################################################
## Author derrick cope <derrick(at)thecopes.me>                                                  
## Version 0.1                                                         
## Copyright (C) 2017 derrick cope <derrick(at)thecopes.me>                            
## Modified On 2017-01-07 16:57                                                                      
## Created  2017-01-07 16:57                                                                        
##############################################################################################
use strict;
use warnings;
use 5.024;
use Data::Dumper;

my @input_numbers = (1, 2, 4, 8, 16, 32, 64, );
my @indices_of_odd_digit_sums = grep {
    my $number = $input_numbers[$_];
    say $number;
    my $sum;
    $sum += $_ for split //, $number;
    say $sum;
    $sum % 2;
    } 0..$#input_numbers;

print Dumper \@indices_of_odd_digit_sums;


