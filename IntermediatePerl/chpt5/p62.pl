#! /usr/bin/env perl
##############################################################################################
## Short description for p47.pl                                                               
## Hash References                                                                               
##                                                                                          
##                                                                                         
##############################################################################################
## Author derrick cope <derrick(at)thecopes.me>                                                  
## Version 0.1                                                         
## Copyright (C) 2016 derrick cope <derrick(at)thecopes.me>                            
## Modified On 2016-12-28 16:09                                                                      
## Created  2016-12-28 16:09                                                                        
###############################################################################################
use strict;
use warnings;
use 5.024;


my $crew = [ {
    name => 'Gilligan',
    hat => 'White',
    shirt => 'Red',
    position => 'First Mate',
}, {
    name => 'Skipper',
    hat => 'Black',
    shirt => 'Blue',
    position => 'Captain',
} ];


my $format = "%-15s %-7s %-7s %-15s\n";

printf $format, qw(Name Shirt Hat Position);
foreach my $crewmember (@$crew) {
    printf $format,
#    $crewmember->{'name'},
#    $crewmember->{'hat'},
#   $crewmember->{'shirt'},
    @$crewmember{ qw( name hat shirt position) };
}
