#!perl -T
use strict;
use warnings;
use Test::More tests => 1;
use Zodiac::Nodes;

my $node = Zodiac::Nodes->new( date => '1980-05-15' );
new_ok 'Zodiac::Nodes';

