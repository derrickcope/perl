#!/usr/bin/perl
#
$hash{'key1'} = 'value1';
$hash{'key2'} = 'value2';

print "%hash" ." ";
@hash = %hash;

print "@hash" ." ";

foreach (%hash) 
{
    print "$_" ."\n";
}
    
print "$ENV{EDITOR}\n";
