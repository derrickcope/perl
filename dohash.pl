#!/usr/bin/perl
#===============================================================================
#
#         FILE: dohash.pl
#
#        USAGE: ./dohash.pl  
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
#      CREATED: 10/25/2016 11:10:48 AM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use 5.014;
use Data::Dumper;

my @arraya = ( "content: test06", "project_id: 184048867" );
print Dumper \@arraya;

#my $arraya = \@arraya;
#print Dumper $arraya;

my @arrayb = ("type: item_add","temp_id: 323456789-1234-4567-abce-1212abhg", 
    "uuid: 423555b43-55f1-48a9-9e67-de5785dg", "args" : \@arraya );
print Dumper \@arrayb;

my %hasha = {
    'token' => '50f3bdb6015bc0ebbbc112ba79f8ce2139f920c8',
    'commands' => \@arrayb,
};

print Dumper \%hasha;
