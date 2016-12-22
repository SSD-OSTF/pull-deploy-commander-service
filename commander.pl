#!/usr/bin/env perl

my $in = *STDIN; #STDIN is the Socket
my $out = *STDOUT; #STDOUT will talk to the journal

$out->print("My printing reaches the outside world\n");
$out->flush(); #proofing that we actually are talking to someone

$_ = <$in>; #read just one line for this moment.

$out->print("Received: ");
$out->print($_);
$out->print("\n");
$out->flush(); #print out what we jus read from stdin

if($_ == "1") {		
    $out->print("I should run the command associated with 1 ;-) \n");
    # here all the things happen for command "1"	
    



} elsif($_ == "2") {
    $out->print("I should run the command associated with 2 ;-) \n");
    # here all the things happen for command "2"	



} else {
    $out->print("Oh! did someone just try to trick me?\n");
}

$out->print("And I'm gone!\n");
$out->flush();
