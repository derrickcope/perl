#!/usr/bin/perl
#===============================================================================
#
#         FILE: castaways.pl
#
#        USAGE: ./castaways.pl  
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
#      CREATED: 08/08/2016 04:40:25 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use 5.014;
use Data::Dumper;

my @castaways = ('Gilligan', 'Skipper', 'Ginger', 'Professor', 'Mary Ann');

#print @castaways ;

print Dumper(@castaways);

push @castaways, 'Mr. Howell', 'Mrs. Howell';


print Dumper @castaways;
