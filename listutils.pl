#!/usr/bin/perl
#===============================================================================
#
#         FILE: listutils.pl
#
#        USAGE: ./listutils.pl  
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
#      CREATED: 08/12/2016 09:24:50 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use 5.014;

use List::Util qw(first);


my @characters = qw( Fred Wilma Barney BammBamm Pebbles Betty );

my $first = first { /\bPebbles\b/i } @characters;

#if  ( $first ) {
say "There is a match!" if ( $first );
#};
