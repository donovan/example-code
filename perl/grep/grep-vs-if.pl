#!/usr/bin/perl

use warnings;
use strict;

my $type = shift;

if ( $type eq 'FOO' or $type eq 'BAR' or $type eq 'BAZ' ) {
    print "in the if, and type = '$type'\n";
}

if (grep { $type eq $_ } qw(FOO BAR BAZ XYZ)) {
    print "in the if grep, and type = '$type'\n";
}
