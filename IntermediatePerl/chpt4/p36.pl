#! /usr/bin/env perl
#
# Short description for p35.pl
#
# Author derrick cope <derrick(at)thecopes.me>
# Version 0.1
# Copyright (C) 2016 derrick cope <derrick(at)thecopes.me>
# Modified On 2016-12-14 18:31
# Created  2016-12-14 18:31
#
use strict;
use warnings;
use 5.022;



my @required = qw( preserver sunscreen water_bottle jacket);
my @skipper = qw( blue_shirt hat preserver sunscreen);
my @gilligan = qw( red_shirt hat lucky_socks water_bottle );

sub check_required_items {
    my $who = shift;
    my %whos_items = map { $_, 1 } @_ ;#the rest of the items passed as arguments

    for my $item (@required) {
        unless ( $whos_items{$item} ) {
            print "$who is missing $item.\n";
        }
    }
}

check_required_items('gilligan', @gilligan);
check_required_items('skipper', @skipper);


