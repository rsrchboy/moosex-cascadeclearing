#!/usr/bin/env perl

# keep MooseX:: from complaining about non-exported sugar
package foo;

use Test::More tests => 1;

BEGIN { use_ok 'MooseX::CascadeClearing' }

diag( "Testing MooseX::CascadeClearing $MooseX::CascadeClearing::VERSION, Perl $], $^X" );
