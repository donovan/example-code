#!/usr/bin/perl

use strict;
use warnings;

my $sleepy_time = shift;
$sleepy_time //= 7;

my $allowance = 5;
my $start = time;

sleep $sleepy_time;

my $runtime = time - $start;

if ($runtime > $allowance) {
    print "warning you took $runtime seconds which is longer than the allowed $allowance seconds\n";
}
else {
    print "congratulations you took $runtime seconds, you made it in under $allowance seconds\n";
}
