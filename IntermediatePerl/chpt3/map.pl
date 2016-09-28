#!/usr/bin/perl
#===============================================================================
#
#         FILE: map.pl
#
#        USAGE: ./map.pl  
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
#      CREATED: 08/10/2016 03:59:15 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use 5.014;
use Data::Dumper;

my @input_numbers = ( 1, 2, 3, 4, 5, 6, 7, 8, 9, 0,);
#print Dumper @input_numbers;


my @newnumbers = map $_ * 3 , @input_numbers;
#print Dumper @newnumbers;

my %numberhash = map { $_ , 1 } @input_numbers;

print Dumper (\%numberhash);
