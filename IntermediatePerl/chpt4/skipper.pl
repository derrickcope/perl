#!/usr/bin/perl
#===============================================================================
#
#         FILE: skipper.pl
#
#        USAGE: ./skipper.pl  
#
#  DESCRIPTION: 
#  
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Derrick Cope (), derrick(at)thecopes(dot)me
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 08/24/2016 12:56:54 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use 5.014;

my @skipper = qw(blue_shirt hat jacket preserver sunscreen);

check_required_items("The Skipper", \@skipper);

sub check_required_items {
    my $who = shift;
    my $items = shift;
    my %whos_items = map { $_, 1} @{$items};

    my @required = qw(preserver sunscreen water_bottle jacket);
    my @missing = ( );

    for my $item (@required) {
        unless ( $whos_items{$item} ) {
            say "$who is missing $item.";
            push @missing, $item;
        }
    }
    if (@missing) {
        say "adding @missing te @$items for $who";
        push @$items, @missing;
    }

}
