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
my @skipper_name = ( 'Skipper', \@skipper );

my @gilligan = qw( red_shirt hat lucky_socks water_bottle );
my @gilligan_name = ( 'Gilligan', \@gilligan, );

my @professor = qw( sunscreen water_bottle slide_rule batteries radio );
my @professor_name = ( 'Professor', \@professor,);

my @all_name = (
    \@skipper_name,
    \@gilligan_name,
    \@professor_name,
);


sub check_required_items {
    my $who = shift;
    my $items = shift;

    my %whos_items = map { $_, 1 } @$items; #the rest of the items passed as arguments
    my @missing = ();

    for my $item (@required) {
        unless ( $whos_items{$item} ) {
            print "$who is missing $item.\n";
            push @missing, $item;
        }
    }

    if ( @missing ) {
        print "add @missing to @$items for $who,\n";
        push @$items, @missing;
    }
}

for my $person (@all_name ) {
    my $who = $person->[0];
    my $items_ref = $person->[1];
    check_required_items( $who, $items_ref );
}


