#!/usr/bin/perl

use strict;
use warnings;

my $data = {
    a => 'foo',
    b => 'bar',
    c => 'baz',
    d => 'donkey',
};

# in a map to omit an element, return an empty list ()
# this saves writing a grep and a map
my @new = map { $_ ne 'd' ? "$_=?" : () } keys %$data;

foreach my $letter (@new) {
    print "'$letter'\n";
}
