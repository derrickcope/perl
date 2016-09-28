#!/usr/bin/perl
#
#print from STDIN with right justified
#



print "enter some strings, press CTRL-D when finished \n";
#chomp(@input = <STDIN>);

while(<>)
{
    chomp($_);
    push(@input, $_);
}

foreach (@input)
{
    printf "%20s\n", $_;

}
print "1234567890" x 8
."\n";

