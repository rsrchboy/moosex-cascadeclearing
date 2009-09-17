#!/usr/bin/perl

use strict;
use warnings;

use FindBin;
use lib "$FindBin::Bin/lib/";

use Test::More tests => 6; 

use SingleCascade;

my $foo = SingleCascade->new(master => 'abcd');
isa_ok $foo, 'SingleCascade';

my $meta = $foo->meta;
isa_ok $meta, 'Moose::Meta::Class';

my %atts = %{$meta->get_attribute_map};

my @names = keys %atts;
### hmm: @names

ok exists $atts{master}, 'master att exists';

my $master = $atts{master};

TODO: {
    local $TODO = q{Attributes don't seem to acknowledge being trait'ed};

    ok $master->has_applied_traits, 'traits have been applied';
}

ok $master->can('has_clear_master'), 'master can has_clear_master';
is $master->clear_master, 'foo', 'master clear_master is foo';

### traits: $master->applied_traits

