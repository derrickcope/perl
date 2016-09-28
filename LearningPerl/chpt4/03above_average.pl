#!/usr/bin/perl
#
#chpt 4 ex. 03 average a list and indicate which are above average
#

sub average 
{
    foreach (@_)
    {
        $sum += $_;
    }
        $num = @_;
        $res = $sum / $num;
    print "the average is $res\n";
    return $res
}

sub above_average 
{
    $avg = &average(@_);
    print " the average is $avg\n";
    foreach (@_)
    {
        if ( $_ > $avg)
        { 
            print "$_ ";
        }
    }
}
        
my @fred = &above_average( 1..10 );
print @fred ."\n";


