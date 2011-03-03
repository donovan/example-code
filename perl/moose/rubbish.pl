#!/usr/bin/perl

use strict;
use warnings;
use 5.010;

use Trash;
use Trash::Plastic;

my @trash = (
    Trash->new( name => 'beer bottle',      type => 'glass',       size => 'small' ),
    Trash->new( name => 'cereal box',       type => 'cardboard',   size => 'small' ),
    Trash->new( name => 'polystyrene hunk', type => 'polystyrene', size => 'big' ),
    Trash->new( name => 'pile of a4 paper', type => 'paper',       size => 'medium' ),
    Trash::Plastic->new( name => 'milk bottle', type => 'plastic', size => 'medium', resin_identification_code => 1 ),
);

foreach my $piece_of_trash (@trash) {
    $piece_of_trash->show_vital_stats();
}
