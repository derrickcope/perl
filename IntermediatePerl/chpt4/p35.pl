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
my %skipper = map { $_, 1 } qw( blue_shirt hat preserver sunscreen);
my %gilligan = map { $_, 1 } qw( red_shirt hat lucky_socks water_bottle );

foreach my $item (@required) { 
    unless ( $skipper{$item} ) {#$item not found in list
    print "skipper\'s $item is missing!\n";
    }
}

for my $item ( @required) {
    unless ( $gilligan{$item} ) {
        print "gilligan\'s $item is missing!\n";
    }
}

