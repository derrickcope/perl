#! /usr/bin/env perl
##############################################################################################
## Short description for p64.pl                                                               
##                                                                                
##                                                                                          
##                                                                                         
##############################################################################################
## Author derrick cope <derrick(at)thecopes.me>                                                  
## Version 0.1                                                         
## Copyright (C) 2016 derrick cope <derrick(at)thecopes.me>                            
## Modified On 2016-12-28 19:07                                                                      
## Created  2016-12-28 19:07                                                                        
##############################################################################################
use strict;
use warnings;
use 5.024;
use Data::Dumper;

my %provisions;
my $person;

open my $infofh, '<', 'info.txt';
#print $infofh;

while (<$infofh>) {
chomp;
say $_;
#    if (/^(\S.*)/) {
#        say $1;
#        $person = $1;
#    } elsif (/^\s+(\S.*)/) {
#        say $1;
#        die 'No person yet!' unless defined $person;
#        push @{ $provisions{$person} }, $1;
#    } else {
#        die "I don't understand: $_";
#    }
}

print Dumper (\%provisions);
