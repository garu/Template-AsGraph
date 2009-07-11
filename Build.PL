use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Template::AsGraph',
    license             => 'perl',
    dist_author         => 'Breno G. de Oliveira <garu@cpan.org>',
    dist_version_from   => 'lib/Template/AsGraph.pm',
    build_requires => {
        'Test::More' => 0,
    },
    add_to_cleanup      => [ 'Template-AsGraph-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
