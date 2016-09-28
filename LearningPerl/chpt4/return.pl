#!/usr/bin/perl
#
#the return operator
print "Enter list: ";
chomp(@names = split(/ /,<STDIN>));
#print "@names\n";
print "Enter name: ";
chomp($name = <STDIN>);
#print "$name\n";
my $result = &which_element_is($name, @names);

sub which_element_is 
{
    my($what, @array) = @_;
    foreach (0..$#array)
    {
        if ($what eq $array[$_])
        {
            print $what ."\n";
            print $_ ."\n";
             return;
         }
     }
   print  "no match\n";
}

