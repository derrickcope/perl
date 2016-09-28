#!/usr/bin/perl
#
#print files in reverse\
#this isnt the way suggested in the book solution but it is the way I thought of it at the time.

 
print "@ARGV";
foreach (@ARGV)
{
    print "$_\n";
    open LOG, $_;
    print reverse(<LOG>);
}


