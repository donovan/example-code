#!/usr/bin/perl

use strict;
use warnings;

use Set::Object;

my $set1 = Set::Object->new( qw( 1 2 3 4 5 57 123 ) );
my $set2 = Set::Object->new( qw( 1 2 3 4 5 6 7 8 9 10 ) );

my @only1 = $set1->difference( $set2 )->members;

print "the following items only occur in set1: " . join(', ', @only1);
print "\n";

if ( $set1->subset( $set2 ) ) {
    print "set1 is a subset of set2\n";
}
else {
    print "set1 is not a subset of set2\n";
}
