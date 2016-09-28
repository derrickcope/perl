#!/usr/bin/perl
#===============================================================================
#
#         FILE: sort.pl
#
#        USAGE: ./sort.pl  
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
#      CREATED: 07/28/2016 05:27:16 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use 5.010;
use Data::Dumper;

my $stuff = "abcdefghijklmnopqrstuvwxyz";
#my $match = index($stuff, "s");
#say $match;


my $match = substr ( $stuff, 3, 5);
say $match;
my @match = split(//, $match);
@match = reverse @match;
print Dumper (\@match);
#say @match;

#my @match = split " ", $match;
#my @rmatch = reverse(@match);
my $rmatch = join "", @match;
say $rmatch;
