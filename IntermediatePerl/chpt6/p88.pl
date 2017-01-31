#! /usr/bin/env perl
##############################################################################################
## Short description for p88.pl                                                               
##                                                                                
##                                                                                          
##                                                                                         
##############################################################################################
## Author derrick cope <derrick(at)thecopes.me>                                                  
## Version 0.1                                                         
## Copyright (C) 2017 derrick cope <derrick(at)thecopes.me>                            
## Modified On 2017-01-07 21:15                                                                      
## Created  2017-01-07 21:15                                                                        
##############################################################################################
use strict;
use warnings;
use 5.024;
use Data::Dumper;

my %provisions = (
    'The Skipper' => [ qw(blue_shirt hat jacket preserver sunscreen) ],
    'The Professor' => [ qw(sunscreen water_bottle slide_rule batteries radio) ],
    'Gilligan' => [ qw(red_shirt hat lucky_socks water_bottle)  ],
);

my %hash = (
    1 => 'one',
    2 => 'two',
    3 => 'three',
    4 => 'four',
);
my %reverse;
while ( my( $x, $y) = each %hash ) {
    say "key: $x, value: $y";
    $reverse{$y} = $x; 
}

print Dumper \%reverse;

my @light = grep @{ $provisions{$_} } < 5, keys %provisions;

say $_ for ( @light );


my @all_wet = grep {
    my @items = @{ $provisions{$_} };
    grep $_ eq 'water_bottle', @items;
} keys %provisions;

print "$_ \n" for @all_wet;

my @remapped = map {
    [ $_ => $provisions{$_} ];
    } keys %provisions;

print Dumper \@remapped;

my @person_pairs = map {
    my $person = $_;
    my @items = @{ $provisions{$person} };
    map [ $person => $_ ], @items;
    } keys %provisions;

print Dumper \@person_pairs;
