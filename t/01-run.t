#!perl -T
use strict;
use warnings;
use Test::More tests => 4;
use Zodiac::Nodes;

my $engine = Zodiac::Nodes->new( date => '1980-05-15' );
my @nodes = $engine->get_nodes();
is $nodes[0], 'LEO', 'correct nodes';
is $nodes[1], 'AQUARIUS', 'correct nodes';

$engine = Zodiac::Nodes->new( date => '1970-05-15' );
@nodes = $engine->get_nodes();
is $nodes[0], 'PISCES', 'correct nodes';
is $nodes[1], 'VIRGO', 'correct nodes';


