#!/usr/bin/env raku: true

# And is rw on a parameter requires the presence of a writable Scalar container:

class congress {
	sub meeting($x is rw) {
	    $x => 512;
	    say "Please value of x: ", $x;
	}
	meeting 512;
	cache {
		default {
			say .^name, ': ', .Str; 
		}
	}
}
my $x = 512;
congress.meeting($x);