#!/usr/bin/perl
#===============================================================================
#
#         FILE: autohash.pl
#
#        USAGE: ./autohash.pl  
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
#      CREATED: 12/08/2016 09:55:08 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use 5.014;
use Data::Dumper;

my $bytes = 1250;
my $source = 'professor.hut';
my $destination = 'gilligan.crew.hut';

my %total_bytes;
my $total_bytes = \%total_bytes;
$total_bytes{$source}{$destination} = $bytes;

print Dumper ($total_bytes);

