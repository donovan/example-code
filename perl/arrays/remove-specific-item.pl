#!/usr/bin/perl

use strict;
use warnings;

my $letter = shift;

$letter //= 'D';

my @array = qw( A B C D E F G H I J K L M N O P Q R S T U V W X Y Z );

@array = grep { $_ ne $letter } @array;

print "array with letter '$letter' removed:\n";

foreach my $item (@array) {
    print "$item ";
}
print "\n";
