use strict;
use warnings;
use Test::More;

use lib 'lib';
use M3U8::Player::SiteKit qw(
    home_url
    player_url
    downloader_url
    converter_url
    hls_player_url
    iptv_player_url
    tool_url
    metadata
);

is(home_url(), 'https://m3u8-player.net', 'homepage');
is(player_url(), 'https://m3u8-player.net/#player', 'player');
is(downloader_url(), 'https://m3u8-player.net/m3u8downloader/', 'downloader');
is(converter_url(), 'https://m3u8-player.net/m3u8tomp4/', 'converter');
is(hls_player_url(), 'https://m3u8-player.net/hls-player/', 'hls player');
is(iptv_player_url(), 'https://m3u8-player.net/iptv-player/', 'iptv player');
is(tool_url('/iptv-player-m3u/'), 'https://m3u8-player.net/iptv-player-m3u/', 'trimmed slug');
is(metadata()->{homepage}, 'https://m3u8-player.net', 'metadata homepage');

done_testing();
