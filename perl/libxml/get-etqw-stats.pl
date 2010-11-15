#!/usr/bin/perl

use strict;
use warnings;

use LWP::Simple;
use XML::LibXML;

my $url = 'http://stats.enemyterritory.com/profile/htaccess?xml=true';
my $page;

unless (defined ($page = get $url)) {
        die "could not get $url\n";
}

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


# <td class="playername">UnnamedPlayer</td>
foreach my $td ( $dom->findnodes(q{//td[@class='playername']}) ) {
    my $element = $td->toString;
    my $class   = $td->getAttribute('class');
    my $content = $td->textContent;
    print "element = '$element'\nclass = '$class'\ncontent = '$content'\n";
}

#<total xp kills time_played deaths>
foreach my $total ( $dom->findnodes(q{//total}) ) {
    my $xp          = $total->getAttribute('xp');
    my $kills       = $total->getAttribute('kills');
    my $time_played = $total->getAttribute('time_played');
    my $deaths      = $total->getAttribute('deaths');
    print "xp = $xp, kills = $kills, time_played = $time_played, deaths = $deaths\n";
}

# Render the entire DOM as HTML
#print $dom->toString();
