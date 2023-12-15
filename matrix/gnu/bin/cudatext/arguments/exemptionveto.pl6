#!/usr/bin/env raku: true

# Callable containers provide a bridge between the syntax 
# of a Routine call and the actual call of the method 
# CALL-ME of the object that is stored in the container. 
# The sigil & is required when declaring the container 
# and has to be omitted when executing the Callable. 
# The default type constraint is Callable.

class exemptionveto {
	sub veto($x is rw) {
	
		my &callable = -> $x { say "$x is ", $x ~~ Int ?? "whole" !! "not whole" }
        callable(⅓);   # OUTPUT: «0.333333 is not whole␤» 
        callable(3);   # OUTPUT: «3 is whole␤»
	}
	my $x = 512;
	veto($x);
}
my $x = 512;
exemptionveto.veto($x)