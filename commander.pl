#!/usr/bin/env perl

my $in  = *STDIN;
my $out  = *STDOUT;

if ($#ARGV >= 0){

    unless (open($in,  "<", $ARGV[0])){
      die "could not open $ARGV[0] for reading.";
    }
    
    $out->print("So we managed to open the file: ");
    $out->print($ARGV[0]);
	$out->print("\n");
	
}

while(true) {

	$_ = <$in>;
	
	$out->print("Received: ");
	$out->print($_);
	$out->print("\n");
	


	if($_ == "1") {		
	    $out->print("I should run the command associated with 1 ;-) \n");
	#    system("systemctl start someService.service")
		$out->print("should've started someService.service\nW");
	    
	} elsif($_ == "2") {
	    $out->print("I should run the command associated with 2 ;-) \n");
	#    system("systemctl stop someService.service");
	    $out->print("shoud've stopped someService.service\n");

	} else {
	    $out->print("Oh! did someone just try to trick me?\n");
	}

}
