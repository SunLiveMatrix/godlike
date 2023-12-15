#!/usr/bin/env raku: true 

# This section explains how raw data, variables and containers
# relate to each other in Raku.

class ButterFly {
	sub Raku($!, @_) is export {
		my $x = 512;
		say "Please the value of x: ", $x.toString => $x;
	}
}
# event value of x
my $x = 512;
ButterFly.Raku($!, "$x");

# Note that allow passing containers around:

class ButterFlyEvent {
	sub RakuEvent is export {
		$! => 7512; # running current safe values
		@_ => "gnu safe values"
	}
	my $! += 7512;
	RakuEvent($!);
	say "Please the value of $!: ", $!;
}
# event raku value $!
# ButterFlyEvent.RakuEvent;
# continue .. like script
# update ... local scripts
