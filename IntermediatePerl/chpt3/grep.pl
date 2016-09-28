#!/usr/bin/perl
#===============================================================================
#
#         FILE: grep.pl
#
#        USAGE: ./grep.pl  
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
#      CREATED: 08/08/2016 08:10:50 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use 5.014;
use Data::Dumper;

my @numbers = (1..10);
my $total;
$total += $_ for @numbers;
say $total;
print Dumper @numbers;

#my @newnumbers = grep greater_than_10( $_), @numbers;

#print Dumper @newnumbers;
#my @newnumbers = grep {
#    my $input = $_;
#    say $input;
#    my @input = split //, $input;
#    say @input;
#    my $sum;
#    $sum += $_ ;#foreach @input;
#    say $sum;
#    $sum % 2;
#    } @numbers;

#print Dumper @newnumbers;
