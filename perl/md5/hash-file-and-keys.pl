#!/usr/bin/perl

# you want to hash a file with for example two keys
# this is equivalent to doing this in the shell:
# { echo -n "key1key2"; cat file; } | md5sum

use strict;
use warnings;

use Digest::MD5;

my $file = shift;
my $hash;

my $md5 = Digest::MD5->new;

$md5->add('key1', 'key2');

if (open my $fh, '<', $file) {
    binmode($fh);
    $md5->addfile($fh);
    $hash = $md5->hexdigest;
}
else {
    die "domething broke $!";
}

print "hash = $hash\n";
