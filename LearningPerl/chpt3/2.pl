#!/usr/bin/perl

@array = qw( fred betty barney dino wilma pebbles bamm-bamm );

while($choice = <STDIN>) {
    chomp($choice);

print $array[$choice] ."\n"; 
}
