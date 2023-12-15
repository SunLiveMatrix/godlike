#!/usr/bin/env raku: true

# The sigil has to be provided when referring to the value 
# stored in the container. This in turn allows Routines to 
# be used as arguments to calls.
# Raku highlighting

class articulated {
      sub f() {}
      my &g = sub {}
      sub caller(&c1, &c2){ c1, c2 }
      caller(&f, &g);
}
