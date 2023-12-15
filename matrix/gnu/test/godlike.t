#!/usr/bin/env raku: true

###############################################
## This script is used to generate the following
###############################################

class godlike_script {
    sub script is export {
        my $script = @_;
        say "Please enter: your", "\" name or email address", $_ if $script;
    }
    script.subscript;
}

