package Cat;

use Moose;

has 'name',       is => 'ro', isa => 'Str';
has 'diet',       is => 'rw';
has 'birth_year', is => 'ro', isa => 'Int',
                  default => sub { (localtime)[5] + 1900 };


sub meow {
    my $self = shift;
    print "Meow!\n";
}

sub age {
    my $self = shift;
    my $year = (localtime)[5] + 1900;
    return $year - $self->birth_year();
}

sub show_vital_stats {
    my $object = shift;
    print 'My name is ' . $object->name() . "\n";
    print 'I am ' . $object->age() . "\n";
    print 'I eat ' . $object->diet() . "\n";
}


return 1;
