#!/usr/bin/perl
#===============================================================================
#
#         FILE: eval.pl
#
#        USAGE: ./eval.pl  
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
#      CREATED: 08/10/2016 10:36:36 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use 5.014;


eval { $average =  $total /  $count } ;

print "Continuing after error: $@" if $@;
