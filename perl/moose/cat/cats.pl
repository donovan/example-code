#!/usr/bin/perl

use strict;
use warnings;
use 5.010;

use Cat;

my $kitty = Cat->new( name => 'Fatty', birth_year => 2003, diet => 'Treats' );

print $kitty->name() . ' is ' . $kitty->age() . " years old\n";

$kitty->meow();
$kitty->meow();
$kitty->meow();
$kitty->meow();
$kitty->meow();

my $kitten = Cat->new( name => 'Bitey', diet => 'Milk' );

$kitten->show_vital_stats();
