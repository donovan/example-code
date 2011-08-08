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

my @new = map { s{-}{ }g; $_ } @items;

map { s{-}{ }g } @items;

foreach my $item (@items) {
    print "$item\n";
}

foreach my $item (@new) {
    print "$item\n";
}
