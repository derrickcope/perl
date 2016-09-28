#!/bin/usrperl

#subroutine that sums

sub total
{
    $sum = 0;
    foreach (@_) 
    {
        
        $sum += $_;
    
    }
    return $sum;

}

my @fred = qw( 1 3 5 7 9 );
$fred_total = &total(@fred);

print "The total of \@fred is $fred_total.\n";

print "Enter some numbers on separate lines: ";

my @user_total = split(/ /, <STDIN>);
my $user_total = &total(@user_total);
print "The total of those numbers is $user_total.\n";

