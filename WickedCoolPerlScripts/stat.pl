#!/usr/bin/perl
#===============================================================================
#
#         FILE: stat.pl
#
#        USAGE: ./stat.pl  
#
#  DESCRIPTION: get stats of file
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Derrick Cope (), derrick(at)thecopes(dot)me
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 09/19/2016 03:41:09 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use 5.014;

#my @filestats = stat("help.pl");

my ($mode, $size) = (stat "help.pl")[7, 5];

print $size, "\n";  
print $mode, "\n";  
