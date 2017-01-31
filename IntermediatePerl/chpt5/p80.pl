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
## Modified On 2017-01-02 14:40                                                                      
## Created  2017-01-02 14:40                                                                        
##############################################################################################
use strict;
use warnings;
use 5.024;
use Storable qw(nstore retrieve);
use Data::Dumper;

#my @data1 = qw( one two three four );
#my @data2 = qw( five six seven eight );
#my @data3 = qw( nine ten eleven twelve );
#my $filename = 'store.txt';
#push @data2, \@data3;
#push @data1, \@data2;

#print Dumper \@data1;

#nstore \@data1, $filename;

#my $array_ref = retrieve $filename;

#print Dumper \$array_ref;

my @list = qw( a b c d e );

foreach ( @list ){
    say "deleting $_";
    unlink;
}
