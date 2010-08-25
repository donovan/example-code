#!/usr/bin/perl

use strict;
use warnings;

my $string = '';

print "when you have an empty string its defined but empty, if you would prefer it to be undef do:\n";
print "my \$new_string = \$string || undef;\n";
print "\$string = '$string'\n";

if ($string) {
    print "\$string is not empty\n";
}
else {
    print "\$string is empty\n";
}

if (defined $string) {
    print "\$string is defined\n";
}
else {
    print "\$string is undef\n";
}

my $new_string_1 ||= $string;
my $new_string_2 //= $string;
my $new_string_3 = $string // undef;
my $new_string_4 = $string || undef;

print "\$new_string_1 = '$new_string_1'\n";
print "\$new_string_2 = '$new_string_2'\n";
print "\$new_string_3 = '$new_string_3'\n";
print "\$new_string_4 = '$new_string_4'\n";
