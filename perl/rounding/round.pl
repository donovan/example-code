#!/usr/bin/perl

use strict;
use warnings;

for (my $i = 0; $i < 1.01; $i += 0.05) {
    printf "$i -> %.2f\n", $i;
}

printf("%.2f\n", 3.1415926535);
printf("%.2f\n", 3.1495926535);
