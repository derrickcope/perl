#!/usr/bin/perl
#
use POSIX;





sub issquare
{
    
    $sqrt1 = sqrt($_[0]);
    $sqrt2 = sqrt($_[1]);
    $low = ceil($sqrt1);
    $hi = floor($sqrt2);
 
    $dif = $hi - $low + 1;
    if ($_[0] == $_[1] )
    {
        $dif = 0;
        if (( $_[0] == 4) || ($_[0] == 9) || ($_[0] == 16)) 
        {
            $dif = 1;
        }
    }
    
    return $dif;
}




        

chomp($testcases = <STDIN>);
while ($testcases > 0)
{
    @para = split(/ /, <STDIN>);


    $square = &issquare(@para);

    print $square ."\n"; 
    
 
 
    $testcases -= 1;
}


