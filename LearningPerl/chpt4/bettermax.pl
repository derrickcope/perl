#!/usr/bin/perl -w
#
#p. 69 better max subroutine

use strict;

@max = split(/ /, <STDIN>);
#$max = 1;

#while ($max != 0) 
#{
#    @max = <STDIN>;
#}
#print "@max";
#
sub max {
    my($max_so_far) = shift @_;
    foreach (@_) {
        if ($_ > $max_so_far) {
            $max_so_far = $_;
        }
    }
    $max_so_far;
}

$maximum = &max(@max);
print "$maximum\n";
