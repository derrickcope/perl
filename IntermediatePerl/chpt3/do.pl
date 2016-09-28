#!/usr/bin/perl
#===============================================================================
#
#         FILE: do.pl
#
#        USAGE: ./do.pl  
#
#  DESCRIPTION: 
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Derrick Cope (), derrick(at)thecopes(dot)me
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 08/10/2016 11:03:13 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use 5.014;

my $x = @ARGV[0];

my $bowler = do {
    if ( $x == 1 ) { 'Mary Ann' }
    elsif ( $x == 2 ) { 'Ginger' }
    else                    { 'Professor' } 
}; 

say $bowler;

