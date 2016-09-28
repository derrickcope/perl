#!/usr/bin/perl
#===============================================================================
#
#         FILE: random.pl
#
#        USAGE: ./random.pl  
#
#  DESCRIPTION: random number generator
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Derrick Cope (), derrick(at)thecopes(dot)me
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 06/27/2016 12:09:23 AM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use 5.010;

my $random = 10 + int( rand(20-10));

say $random;
