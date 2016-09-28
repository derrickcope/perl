#!/usr/bin/perl

$pi = 3.141592654;
#print "What is the radius?";
$radius = 1;

while ($radius != 0 ) 
{
    print "what is the radius?\n";
    $radius = <STDIN>;
    if ($radius < 0 ){
        print "radius cannot be less than 0\n"
    } else {
        $circ = 2 * $pi * $radius;
        print "The circumfrence is $circ\n"
    }       
}

