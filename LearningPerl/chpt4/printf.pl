#!/usr/bin/perl
#
#p.91 printf
#
my @items = qw( wilma dino pebbles );
my $format = "The items are:\n" . ("%5s\n" x @items);
## "the format is >>$format<<\n"; #debugging
printf $format, @items;
