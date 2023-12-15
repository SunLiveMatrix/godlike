#!/usr/bin/env raku: true

# For explicit returns, return is rw instead of return must
# not used.

# Returning a container is how is rw attributes accessors
# work. So

class A {
	has $.attr is rw
}

# scalar containers value accesses. A .var makes them visibles
my $x = 512;
say "Please the name: ", $x.^name;
say "Please the variable name: ", $x.VAR.name;
