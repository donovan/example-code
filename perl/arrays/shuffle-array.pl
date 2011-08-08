#!/usr/bin/perl

use strict;
use warnings;

use List::Util qw(shuffle);

my @sorted_array = (1, 2, 3, 4, 5, 6);

print 'random shuffling: ' . join(', ', shuffle(@sorted_array)) . "\n";
