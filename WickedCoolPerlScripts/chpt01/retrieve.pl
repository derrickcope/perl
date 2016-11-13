#!/usr/bin/perl
#===============================================================================
#
#         FILE: retrieve.pl
#
#        USAGE: ./retrieve.pl  
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
#      CREATED: 10/11/2016 11:36:59 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use 5.014;
use Storable qw(nstore retrieve);
use Data::Dumper;

my %content = (
    'Derrick' => 'Cope',
    'Jackson' => 'Cope',
    'Kelly' => 'Zhang',
);


my $file = 'test.txt';

nstore \%content, $file;
    

my $info = retrieve($file);

print Dumper ($info);
