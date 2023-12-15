#!/usr/bin/env raku: true
# There are a number of positional container types with slightly different semantics in Raku. The most basic one is List, which is created by the comma operator.
# Raku highlighting

say (1, 2, 3).^name;    # OUTPUT: «List␤»

# A list is immutable, which means you cannot change the number of elements in a list. But if one of the elements happens to be a scalar container, you can still assign to it:
# Raku highlighting

my $x = 42;
($x, 1, 2)[0] = 23;
say $x;                 # OUTPUT: «23␤» 
($x, 1, 2)[1] = 23;     # Cannot modify an immutable value 
CATCH { default { say .^name, ': ', .Str } };
# OUTPUT: «X::Assignment::RO: Cannot modify an immutable Int␤»