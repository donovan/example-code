package Trash::Plastic;

use Moose;

extends 'Trash';

has 'resin_identification_code', is => 'ro', isa => 'Int';

sub show_vital_stats {
    my $object = shift;
    print 'I am a ' . $object->name() . "\n";
    print 'I am made of ' . $object->type() . "\n";
    print 'I am a ' . $object->size() . " object\n";
    print 'I have a resin identification code of ' . $object->resin_identification_code() . "\n";
    print 'Dispose of me by ' . $object->disposal_method() . "\n";
    print "-----------------------------------------------\n";
}

return 1;
