package Trash;

use Moose;
use 5.010;
use Module::Pluggable search_path => 'Trash', require => 1;

has 'name', is => 'ro', isa => 'Str';
has 'type', is => 'ro', isa => 'Str';
has 'size', is => 'ro', isa => 'Str';

sub disposal_method {
    my $self = shift;
    my $disposal_instructions;
    given ($self->type()) {
        when('compound') {
            $disposal_instructions = 'breaking me into my components and disposing of them in the correct manner';
        }
        when('plastic') {
            given ($self->resin_identification_code()) {
                when(1 or 2) {
                    $disposal_instructions = 'putting me in the recycle bin';
                }
                default {
                    $disposal_instructions = disposal_location($self->size());
                }
            }
        }
        when('cardboard') {
            $disposal_instructions = 'putting me in the pile behind the door on level 3';
        }
        when('glass') {
            $disposal_instructions = 'putting me in the recycle bin';
        }
        when('can') {
            $disposal_instructions = 'putting me in the recycle bin';
        }
        when('polystyrene') {
            $disposal_instructions = disposal_location($self->size());
        }
        when('paper') {
            $disposal_instructions = 'putting me in the shredding bin';
        }
        default {
            $disposal_instructions = disposal_location($self->size());
        }
    }
    return $disposal_instructions;
}

sub show_vital_stats {
    my $object = shift;
    print 'I am a ' . $object->name() . "\n";
    print 'I am made of ' . $object->type() . "\n";
    print 'I am a ' . $object->size() . " object\n";
    print 'Dispose of me by ' . $object->disposal_method() . "\n";
    print "-----------------------------------------------\n";
}

sub disposal_location {
    my $size = shift;
    given ($size) {
        when('big') {
            return 'putting me in the skip in the car park on level 0';
        }
        default {
            return 'putting me in the regular rubbish bin';
        }
    }
}

__PACKAGE__->plugins;

return 1;
