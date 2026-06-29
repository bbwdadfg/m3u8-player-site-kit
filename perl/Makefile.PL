use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME => 'M3U8::Player::SiteKit',
    VERSION_FROM => 'lib/M3U8/Player/SiteKit.pm',
    ABSTRACT => 'URL helpers for M3U8 Player',
    AUTHOR => 'M3U8 Player <hello@m3u8-player.net>',
    LICENSE => 'mit',
    MIN_PERL_VERSION => '5.010',
    META_MERGE => {
        'meta-spec' => { version => 2 },
        resources => {
            homepage => 'https://m3u8-player.net',
            repository => {
                type => 'git',
                url => 'https://github.com/bbwdadfg/m3u8-player-site-kit.git',
                web => 'https://github.com/bbwdadfg/m3u8-player-site-kit',
            },
        },
    },
);
