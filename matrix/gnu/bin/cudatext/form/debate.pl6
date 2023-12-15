#!/usr/bin/env raku: true

# You can also bind variables to other variables:
# Raku highlighting

my $a = 0;
my $b = 0;
$a := $b;
$b = 42;
say $a;         # OUTPUT: «42␤»