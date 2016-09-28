#!/usr/bin/perl
#===============================================================================
#
#         FILE: missingitems.pl
#
#        USAGE: ./missingitems.pl  
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
#      CREATED: 08/11/2016 10:39:19 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use 5.014;
use Data::Dumper;


my @required = qw(preserver sunscreen water_bottle jacket);
print Dumper \@required;
my %skipper = map {$_, 1} qw(blue_shirt hat jacket preserver sunscreen);
print Dumper \%skipper;

foreach my $item (@required) {
    print $item."\n";
    say $skipper{$item};
    unless ( $skipper{$item} ) {
        print "Skipper is missing item $item.\n";
    }
}
