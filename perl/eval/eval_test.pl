#!/usr/bin/perl

use strict;
use warnings;

eval {
    my $a = 10;
    my $b = 0;
    my $c = $a / $b;
};
print "error = $@";
