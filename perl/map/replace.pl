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

my @items2 = @items;
my @items3 = @items;

my @new = map { s{-}{ }g; $_ } @items;

map { s{-}{ }g } @items2;

s{-}{ }g for @items3;

print "-----------items------------\n";
foreach my $item (@new) {
    print "$item\n";
}

print "-----------items2------------\n";
foreach my $item (@items2) {
    print "$item\n";
}
print "-----------items3------------\n";
foreach my $item (@items3) {
    print "$item\n";
}
