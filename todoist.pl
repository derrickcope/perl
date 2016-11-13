#!/usr/bin/perl
#===============================================================================
#
#         FILE: todoist.pl
#
#        USAGE: ./todoist.pl  
#
#  DESCRIPTION:     
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Derrick Cope (), derrick(at)thecopes(dot)me
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 10/12/2016 09:19:46 PM
#     REVISION: ---
#===============================================================================

#use strict;
#use warnings;
#use utf8;
use 5.014;
use Data::Dumper;
use LWP::UserAgent;
use Getopt::Long;
use Data::UUID;
use Term::ANSIColor qw( colored );
use JSON;


# when no option or the --help option is given this is printed

=pod

=head1 NAME

todoist.pl manage task list on www.todoist.com

=head1 SYNOPSIS

todoist.pl --[option] ...  [item] ...

=head1 DESCRIPTION


-h, --help 
    
        show this message


-l, --list
    
        list task items

--additem
        add task to task list
        
        Ex. todoist.pl --item="content of task" --priority=3 --due="tomorrow" --additem
=cut


my $url = 'https://todoist.com/API/v7/sync';
my $token = '50f3bdb6015bc0ebbbc112ba79f8ce2139f920c8';
my $ua = LWP::UserAgent->new;
my @goal;

my $list; #initialize options
my $help;
my $additem;
my $task_priority;
my $due_date;
my $item_name;
my $project_name;

my $priority1 = 'white'; #color to denote priority 1 in task list
my $priority2 = 'green'; #color to denote priority 2 in task list
my $priority3 = 'yellow'; #color to denote priority 3 in task list
my $priority4 = 'red'; #color to denote priority 4 in task list

my $tasks = $ua->post($url, { #retrieve object from todoist.com api
    token => $token,
    sync_token => "*",
    resource_types => '["all"]',
});
my $decodetasks = $tasks->decoded_content; #decode raw data
my $decodetasks_ref = from_json( $decodetasks ); #turn raw data to perl object
print Dumper $decodetasks_ref;

my %project_id; #create hash of project ids => name of project 
foreach my $pros ( 0 .. $#{$decodetasks_ref->{'projects'}} ) {
    $project_id{$decodetasks_ref->{'projects'}[$pros]{'id'}} = $decodetasks_ref->{'projects'}[$pros]{'name'} ,
}

#print Dumper \%project_id;


#if ($#ARGV < 0 ) { #if there is no argument print documentation same as --help
#    system("perldoc $0");
#    exit (0);
#}


GetOptions ("list" => \&list, #assign options to functions
            'help' => \&help,
            'priority=i' => \$task_priority,
            'due=s' => \$due_date,
            'item=s'=> \$item_name,
            'project=s' => \$project_name,
            'additem' => \&additem,
              
) or die system( "perldoc $0" );


#start of functions

sub help {
    system( "perldoc $0" );
}

sub list {

    system( "clear" );
    foreach my $i ( 0 .. $#{$decodetasks_ref->{'items'}} )  {
        if ( $decodetasks_ref->{'items'}[$i]{'priority'} == 1 ) {
           printf( 
                "%4s %-75s %-35s %-15s\n", 
                colored( $i + 1 ."\)", $priority1 ), 
                colored( $decodetasks_ref->{'items'}[$i]{'content'}, $priority1 ), 
                colored( "Project: $project_id{$decodetasks_ref->{'items'}[$i]{'project_id'}}", $priority1 ), 
                colored( "Due: $decodetasks_ref->{'items'}[$i]{'date_string'}", $priority1 )
            );
        } elsif ( $decodetasks_ref->{'items'}[$i]{'priority'} == 2 ) {
           printf( 
                "%4s %-75s %-35s %-15s\n", 
                colored( $i + 1 ."\)", $priority2 ), 
                colored( $decodetasks_ref->{'items'}[$i]{'content'}, $priority2 ), 
                colored( "Project: $project_id{$decodetasks_ref->{'items'}[$i]{'project_id'}}", $priority2 ), 
                colored( "Due: $decodetasks_ref->{'items'}[$i]{'date_string'}", $priority2 )
            );
        } elsif ( $decodetasks_ref->{'items'}[$i]{'priority'} == 3 ) {
           printf( 
                "%4s %-75s %-35s %-15s\n", 
                colored( $i + 1 ."\)", $priority3 ), 
                colored( $decodetasks_ref->{'items'}[$i]{'content'}, $priority3 ), 
                colored( "Project: $project_id{$decodetasks_ref->{'items'}[$i]{'project_id'}}", $priority3 ), 
                colored( "Due: $decodetasks_ref->{'items'}[$i]{'date_string'}", $priority3 )
            );
        } else {
            printf( 
                "%4s %-75s %-35s %-15s\n", 
                colored( $i + 1 ."\)", $priority4 ), 
                colored( $decodetasks_ref->{'items'}[$i]{'content'}, $priority4 ), 
                colored( "Project: $project_id{$decodetasks_ref->{'items'}[$i]{'project_id'}}", $priority4 ), 
                colored( "Due: $decodetasks_ref->{'items'}[$i]{'date_string'}", $priority4 )
            );
         }
     }
}

sub additem {
    
    my %project_id_reverse;
    foreach my $project_key ( keys %project_id ) {
        $project_id_reverse{$project_id{$project_key}} = $project_key;
    }

    my $ug = Data::UUID->new;
    my $uuid = $ug->create_str();
    my $tempid = $ug->create_str();


    my $additem_type_ref = [{
                            'type' => 'item_add',
                            'temp_id' => $tempid,
                            'uuid' => $uuid,
                            'args' => {
                                        'content' => $item_name,
                                        'project_id' => $project_id_reverse{$project_name},
                                        'priority' => $task_priority,
                                        'date_string' => $due_date,
                            },
    }];

    my $additem_type_json = to_json( $additem_type_ref );
    my $additem_token_ref = { 
                                'token' => $token,
                                'commands' => $additem_type_json,
    };

    my $additem = $ua->post( $url, $additem_token_ref );
    
    if ( $additem ->is_success() ) {
        print "item added!\n";
    } else {
        print "error: " . $additem->status_line();
    }
    system( "perl todoist.pl --list" );
}
























