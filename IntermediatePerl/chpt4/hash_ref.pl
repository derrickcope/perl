#!/usr/bin/perl
#===============================================================================
#
#         FILE: hash_ref.pl
#
#        USAGE: ./hash_ref.pl  
#
#  DESCRIPTION: references to hashes p47 
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Derrick Cope (), derrick(at)thecopes(dot)me
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 09/06/2016 01:06:09 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use 5.014;
use Data::Dumper;

my %gilligan_info = (
    name    => 'Gilligan',
    hat     => 'White',
    shirt   => 'Red',
    position=> 'First Mate',
);

my $hash_ref = \%gilligan_info;

print Dumper $hash_ref;
print Dumper (%gilligan_info);


