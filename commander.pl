#!/usr/bin/env perl

my $in = *STDIN;
my $out = *STDOUT;

$out->print("My printing reaches the outside world\n");

while($_ = <$in>) {
	
	$out->print("Received: ");
	$out->print($_);
	$out->print("\n");
	

	if($_ == "1") {		
	    $out->print("I should run the command associated with 1 ;-) \n");
	#    system("systemctl start someService.service")
		$out->print("should've started someService.service\n");
	    
	} elsif($_ == "2") {
	    $out->print("I should run the command associated with 2 ;-) \n");
	#    system("systemctl stop someService.service");
	    $out->print("shoud've stopped someService.service\n");

	} else {
	    $out->print("Oh! did someone just try to trick me?\n");
	}

}

$out->print("And I'm gone!\n");
