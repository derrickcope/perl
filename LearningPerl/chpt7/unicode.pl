#!/usr/bin/perl
#


$_ = "This is a long sentence with no numbers.";

print "there are spaces\n" if (/\p{Space}/);
print "there are numbers\n" if (/\p{Digit}/);
print "there are letters\n" if (/\p{Alpha}/);
print "there is a period\n" if (/\./);



