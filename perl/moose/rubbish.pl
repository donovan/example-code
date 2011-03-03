#!/usr/bin/perl

use strict;
use warnings;
use 5.010;

use Trash;

my $debug = 1;

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

if ($debug) {

    my $meta = Trash->meta();

    print "\n--- ATTRIBUTES ---\n\n";
    foreach my $attribute ( $meta->get_all_attributes ) {
        print $attribute->name(), "\n";

        if ( $attribute->has_type_constraint ) {
            print "  type: ", $attribute->type_constraint->name, "\n";
        }
    }

    print "\n--- METHODS ---\n\n";
    for my $method ( sort { $a->package_name cmp $b->package_name || $a->name cmp $b->name } $meta->get_all_methods ) {
        print $method->name, "\n";
        print "    " . $method->package_name . "\n";
    }

}
