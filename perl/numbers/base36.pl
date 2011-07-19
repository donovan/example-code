#!/usr/bin/perl

# http://stackoverflow.com/questions/2670869/whats-the-best-way-to-do-base36-arithmetic-in-perl

use strict;
use warnings;
use POSIX;

my @base_36_numbers = qw( 1 2 3 4 5 6 7 8 9 A B C D E F G H I J K L M N O P Q R S T U V W X Y Z 10 11 12 13 14 15 16 17 18 19 1A 1B 1C 1D 1E 1F 1G 1H 1I );

foreach my $b1 (@base_36_numbers) {
    foreach my $b2 (@base_36_numbers) {
        if (POSIX::strtol($b1,36) == POSIX::strtol($b2,36)) {
            print "$b1 = $b2\n";
        }
        elsif (POSIX::strtol($b1,36) > POSIX::strtol($b2,36)) {
            print "$b1 > $b2\n";
        }
        elsif (POSIX::strtol($b1,36) < POSIX::strtol($b2,36)) {
            print "$b1 < $b2\n";
        }
    }
}
