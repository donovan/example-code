#!/usr/bin/perl

use strict;
use warnings;

my $data = {};

$data->{array1} = [qw( k l m n o p q r s t u v w x y z )];
$data->{array2} = [qw( a b c d e f g h i j k l m n o p )];

my %count = ();
foreach my $element (@{$data->{array1}}, @{$data->{array2}}) { $count{$element}++ }

foreach my $element (keys %count) {
    push @{$data->{union}}, $element;
    if ($count{$element} > 1) {
        push @{$data->{intersection}}, $element;
    }
    else {
        push @{$data->{difference}}, $element;
        if ( grep {$_ eq $element} @{$data->{array1}} ) {
            push @{$data->{only1}}, $element;
        }
        else {
            push @{$data->{only2}}, $element;
        }
    }
}

foreach my $type (sort keys %$data) {
    print "$type\n";
    foreach my $element (sort @{$data->{$type}}) {
        print "$element ";
    }
    print "\n\n";
}
