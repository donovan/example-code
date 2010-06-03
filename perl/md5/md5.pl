#!/usr/bin/perl

use warnings;
use strict;
use Digest::MD5;

my $file = shift || '/etc/passwd';
open(FILE, $file) or die "Can't open '$file': $!";
binmode(FILE);

my $md5 = Digest::MD5->new->addfile(*FILE)->hexdigest;

my $system_md5 = `md5sum $file`;
chomp $system_md5;

print "perl : $md5  $file\n";
print "shell: $system_md5\n";
