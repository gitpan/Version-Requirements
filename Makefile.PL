
use strict;
use warnings;



use ExtUtils::MakeMaker 6.11;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'Version::Requirements',
                       'DISTNAME' => 'Version-Requirements',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.11'
                                               },
                       'AUTHOR' => 'Ricardo Signes <rjbs@cpan.org>',
                       'BUILD_REQUIRES' => {},
                       'ABSTRACT' => 'a set of version requirements for a CPAN dist',
                       'EXE_FILES' => [],
                       'VERSION' => '0.100660',
                       'PREREQ_PM' => {
                                        'Scalar::Util' => '0',
                                        'Test::More' => '0.88',
                                        'version' => '0.77',
                                        'Carp' => '0'
                                      },
                       'LICENSE' => 'perl'
                     );


delete $WriteMakefileArgs{LICENSE}
  unless eval { ExtUtils::MakeMaker->VERSION(6.31) };

WriteMakefile(%WriteMakefileArgs);



