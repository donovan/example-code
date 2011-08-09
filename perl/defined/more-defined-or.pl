#!/usr/bin/perl

use strict;
use warnings;

# some examples of using defined or

my @variables = (0,1,2,undef,'string');

foreach my $var (@variables) {
    my $string = $var;
    $string //= 'undef';
    my $or_equals = $var ;
    my $defined_equals = $var;
    $or_equals      ||= 'replaced';
    $defined_equals //= 'replaced';
    print "'$string' ||= '$or_equals' //= '$defined_equals'\n";
}
