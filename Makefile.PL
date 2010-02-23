
use strict;
use warnings;



use ExtUtils::MakeMaker 6.11;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'Version::Requirements',
                       'DISTNAME' => 'Version-Requirements',
                       'AUTHOR' => 'Ricardo Signes <rjbs@cpan.org>',
                       'ABSTRACT' => 'a set of version requirements for a CPAN dist',
                       'EXE_FILES' => [],
                       'VERSION' => '0.100530',
                       'LICENSE' => 'perl',
                       'PREREQ_PM' => {
                                        'Test::More' => '0.88',
                                        'Scalar::Util' => 0,
                                        'ExtUtils::MakeMaker' => '6.11',
                                        'version' => 0,
                                        'Carp' => 0
                                      }
                     );


delete $WriteMakefileArgs{LICENSE}
  unless eval { ExtUtils::MakeMaker->VERSION(6.31) };

WriteMakefile(%WriteMakefileArgs);



