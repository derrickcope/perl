#!/bin/usr/perl

#subroutine that sums

sub total
{
    $sum = 0;
    foreach (@_) 
    {
        
        $sum += $_;
    
    }
    return $sum;

}

my @fred = ( 1..1000 );
$fred_total = &total(@fred);

print "The sum of the numbers of 1 to 1000 is $fred_total.\n";







