#!/usr/bin/perl

use strict;
use warnings;

for (my $i = 0; $i < 1.01; $i += 0.05) {
    printf "$i -> %.1f\n", $i;
}
