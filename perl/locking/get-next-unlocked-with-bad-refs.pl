#!/usr/bin/perl

use strict;
use warnings;
use Data::Dump qw(dump);

my @instances = (
    { name => 1, locked => 1 },
    { name => undef, locked => 0 },
    { name => 3, locked => undef },
    { name => 4, locked => 1 },
    { name => 5, locked => 1 },
    { name => 6, locked => 0 },
    { name => 7, locked => 1 },
);

my $instance_ref;
my $found = 0;

while (not $found) {
    $instance_ref = shift @instances;
    unless (defined $instance_ref->{name} and defined $instance_ref->{locked}) {
        print "the following instance ref is bad, skipping\n";
        dump($instance_ref);
        next;
    }
    # is instance locked?
    if ($instance_ref->{locked}) {
        # instance is locked
    }
    else {
        $found = 1;
    }
}

dump($instance_ref);
