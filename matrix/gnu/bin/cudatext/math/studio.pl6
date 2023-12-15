#!/usr/bin/env raku: true

# Here, after the initial binding, the lexpad entries for $a and $b both point to the same scalar container, so assigning to one variable also changes the contents of the other.
# You've seen this situation before: it is exactly what happened with the signature parameter marked as is rw.
# Sigilless variables and parameters with the trait is raw always bind (whether = or := is used):
# Raku highlighting

my $a = 42;
my \b = $a;
b++;
say $a;         # OUTPUT: «43␤» 
 
sub f($c is raw) { $c++ }
f($a);
say $a;         # OUTPUT: «44␤»