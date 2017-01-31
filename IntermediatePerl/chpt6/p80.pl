#! /usr/bin/env perl
##############################################################################################
## Short description for p80.pl                                                               
##                                                                                
##                                                                                          
##                                                                                         
##############################################################################################
## Author derrick cope <derrick(at)thecopes.me>                                                  
## Version 0.1                                                         
## Copyright (C) 2017 derrick cope <derrick(at)thecopes.me>                            
## Modified On 2017-01-07 20:51                                                                      
## Created  2017-01-07 20:51                                                                        
##############################################################################################
use strict;
use warnings;
use 5.024;
use JSON;
use Data::Dumper;

my $object = {
    'one' => [ 'two', 'three', 'four', 'five',],
    'two' => [ 'three', 'four', 'five', 'six',],
    'three' => [ 'four', 'five', 'six', 'seven',],
    'four' => [ 'five', 'six', 'seven', 'eight',], 
    };

print to_json( $object) ."\n";

print Dumper (\$object) ."\n";

