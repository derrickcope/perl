#!/usr/bin/perl
#
#
@list = (1,2,3,4,5,6); 
push(@list,7,8,9);
print "@list\n";
$rlist = reverse(@list);
print $rlist ."\n";
$rlist = join(", ",reverse(@list));
print $rlist . "\n";

#$a = 0;
#until ($a == 10)
#do
for ( $a = 0; $a <= 10; $a++)
{
    #$a++;
    print '$a' ." = $a\n";
    sleep 1;
}
#until ( $a == 10);

