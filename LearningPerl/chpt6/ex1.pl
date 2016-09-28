#!/usr/bin/perl
#
my %zodiac = 
(
    'derrick' => 'monkey',
    'kelly' => 'dragon',
    'tres' => 'pig',
    'jackson' => 'dog',
);

print "Whose zodiac sign do you want to check?\n";
chomp(my $name = <STDIN>);
#print "$name\n";
print "$zodiac{$name}\n";
#print "$zodiac{kelly}\n";

