#!/usr/bin/perl

use strict;
use warnings;
use Data::Dump qw(dump);

my @instances = (
    { name => 1, locked => 1 },
    { name => 2, locked => 1 },
    { name => 3, locked => 1 },
    { name => 4, locked => 0 },
    { name => 5, locked => 1 },
    { name => 6, locked => 1 },
    { name => 7, locked => 1 },
);

my $instance_ref;
my $found = 0;

while (not $found) {
    $instance_ref = shift @instances;
    # is instance locked?
    if ($instance_ref->{locked}) {
        # instance is locked
    }
    else {
        $found = 1;
    }
}

dump($instance_ref);
