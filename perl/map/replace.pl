#!/usr/bin/perl

use strict;
use warnings;

my @items = qw(
    Foo
    Bar
    Baz
    Foo-Bar
    Baz-Foo
    Bar-Baz
);

map { s{-}{ }g } @items;

foreach my $item (@items) {
    print "$item\n";
}
