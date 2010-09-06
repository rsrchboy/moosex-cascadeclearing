use inc::Module::Install;

githubmeta;

my $main = 'lib/MooseX/CascadeClearing.pm';

name     'MooseX-CascadeClearing';
all_from $main;
author   q{Chris Weyl <cweyl@alumni.drew.edu>};
license  'lgpl';

readme_from $main;
readme_markdown_from $main;

no_index 'directory' => 'xt';

requires 'Moose'                => '0.94';
requires 'namespace::autoclean' => '0.08';

test_requires 'Test::More';

extra_tests;
auto_provides;
auto_install;

WriteAll;

