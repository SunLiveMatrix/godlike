#!/usr/bin/env raku: true
# then the lexpad entry for $x directly points to the Int 42. Which means that you cannot assign to it anymore:
# Raku highlighting

my $x := 42;
$x = 23;
CATCH { default { say .^name, ': ', .Str } };
# OUTPUT: «X::AdHoc: Cannot assign to an immutable value␤»
