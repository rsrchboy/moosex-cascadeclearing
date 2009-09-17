use inc::Module::Install;

githubmeta;

name     'MooseX-CascadeClearing';
all_from 'lib/MooseX/CascadeClearing.pm';
author   q{Chris Weyl <cweyl@alumni.drew.edu>};
license  'lgpl';

no_index 'directory' => 'xt';

requires 'Moose'                => '0.88';
requires 'namespace::autoclean' => '0.08';

test_requires 'Test::More';

extra_tests;
auto_provides;
auto_install;

WriteAll;

