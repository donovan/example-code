#!/usr/bin/perl

use strict;
use warnings;

use File::Slurp;
use XML::LibXML;

my $input = shift;

my $page = read_file($input);

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

print '"' . join('","', qw(name year score)) . '"' . "\n";

foreach my $tr ( $dom->findnodes(q{//tr}) ) {
    my $item = 1;
    my @items;
    foreach my $td ( $tr->findnodes(q{./td}) ) {
        my $content = $td->textContent;
        if ($item == 1) {
        }
        elsif ($item == 2) {
            foreach my $a ( $td->findnodes(q{./a}) ) {
                my $href = $a->getAttribute('href');
                push @items, '=HYPERLINK( ""' . "http://www.metacritic.com$href" . '"" ; ""' . $content . '"" )';
            }
        }
        else {
            push @items, $content;
        }
        $item++;
    }
    print '"' . join('","', @items) . '"' . "\n";
}
