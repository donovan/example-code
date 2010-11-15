#!/usr/bin/perl

use strict;
use warnings;
use File::Slurp;
use XML::LibXML;
use Data::Dump qw(dump);

my $data = {};

my $page = read_file('example.html') ;

# Create a parser object
my $parser = XML::LibXML->new();
$parser->recover(1);

# Trap STDERR because the parser is quite verbose and annoying
my $dom;
{
    local *STDERR;
    open STDERR, '>', '/dev/null';
    # parse the page
    $dom = $parser->parse_html_string($page);
}

# Check that we got a dom object back
die q{Parsing failed} unless defined $dom;

my $title = $dom->findvalue('//title');
my $class = $dom->findvalue('//table/@class');

print "title = '$title', class = '$class'\n";

foreach my $td ( $dom->findnodes(qq{//table[\@class='$class']/tbody/tr/td[2]}) ) {
    my ($hr, $min) = split/:/, ( split/\s+/, $td->textContent )[1];
    $data->{"$hr:$min"}{examples} = $td->findvalue('./following::td[1]');
    $data->{"$hr:$min"}{value}    = $td->findvalue('./following::td[2]');
    $data->{"$hr:$min"}{texample} = $td->findvalue('./following::td[3]');
    $data->{"$hr:$min"}{tvalue}   = $td->findvalue('./following::td[4]');
}

dump($data);
