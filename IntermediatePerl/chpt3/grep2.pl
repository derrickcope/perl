#!/usr/bin/perl
#===============================================================================
#
#         FILE: grep2.pl
#
#        USAGE: ./grep2.pl  
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
#      CREATED: 08/23/2016 09:23:35 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use 5.014;
use Data::Dumper;

my @numbers = (1..20);

my @odd_digit_sum = grep {
    my $sum;
    $sum += $_ for split //;
    say $sum;
    $sum % 2;
    } @numbers;

print @odd_digit_sum;
