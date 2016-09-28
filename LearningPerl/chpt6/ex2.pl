#!/usr/bin/perl
#


#First try wasn't as good as the book p.304
#chomp(@name_list = <STDIN>);

#foreach $name (@name_list) 
#{
    
    #print "$name\n";
#    $num = 0;
#    foreach $word (@name_list)
#    {
        #print "$word\n";        
#        if ($word eq $name)
#       {
            #print "yes\n";    
#            $num += 1;
#         }

#    }

#         print "$name = $num\n";   

    
#}
#print @name_list;

my( @words, %count, $word ); #optional variable declaration
chomp(@words = <STDIN>);

foreach $word (@words)
{
    $count{$word} += 1; #add to the hash
}

foreach $word (keys %count) { 
    print "$word was seen $count($word) times.\n";
}
