use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'App::SVNBinarySearch',
    license             => 'perl',
    dist_author         => 'Will Coleda <coke@cpan.org>',
    dist_version_from   => 'lib/App/SVNBinarySearch.pm',
    requires => {
        'Test::More' => 0,
        'version'    => 0,
        'Iterator'   => 0,
    },
    add_to_cleanup      => [ 'App-SVNBinarySearch-*' ],
    script_files => [ 'svn_binary_search' ],
);

$builder->create_build_script();
