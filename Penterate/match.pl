#!/usr/bin/perl
#===============================================================================
#
#         FILE: match.pl
#
#        USAGE: ./match.pl  
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
#      CREATED: 09/12/2016 09:37:11 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use 5.014;


open DICT_FH, '<', 'words.txt';

while (<DICT_FH>) {
    print if /^bet|^bat/;
}

