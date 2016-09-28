#!/usr/bin/perl
#
#



#print "enter actual return date\n";
chomp($tempdate = <STDIN>); 
@retdate = split / /, $tempdate;




$retday = $retdate[0];
$retmonth = $retdate[1];
$retyear = $retdate[2];


#print "enter expected return date\n";
chomp($tempdate = <STDIN>); 
@expdate = split / /, $tempdate;

$expday = $expdate[0];
$expmonth = $expdate[1];
$expyear = $expdate[2];


if ( $retyear > $expyear ) 
{
    $fine = 10000;
} 

elsif ( $retyear == $expyear )
{
    if ( $retmonth == $expmonth )
    {
        if ( $retday <= $expday) 
        {
            $fine = 0;
        }
        else
        {
            $fine = ( $retday - $expday ) * 15;
        }
    }
    elsif ( $retmonth < $expmonth ) 
    {
        $fine = 0;
    }
    else 
    {
        $fine = ( $retmonth - $expmonth ) * 500;
    }
}
else 
{ 
    $fine = 0; 
}


print "$fine\n";

#print "$expday\n";
#print "$expmonth\n";
#print "$expyear\n";

#print "$retday\n";
#print "$retmonth\n";
#print "$retyear\n";

