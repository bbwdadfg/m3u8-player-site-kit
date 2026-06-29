package M3U8::Player::SiteKit;

use strict;
use warnings;
use Exporter 'import';

our $VERSION = '0.001';
our @EXPORT_OK = qw(
    base_url
    home_url
    tool_url
    player_url
    downloader_url
    converter_url
    hls_player_url
    iptv_player_url
    metadata
);

sub base_url { return 'https://m3u8-player.net' }
sub home_url { return base_url() }

sub tool_url {
    my ($slug) = @_;
    $slug = '' unless defined $slug;
    $slug =~ s{\A/+}{};
    $slug =~ s{/+\z}{};
    return base_url() if $slug eq '';
    return base_url() . '/' . $slug . '/';
}

sub player_url { return base_url() . '/#player' }
sub downloader_url { return tool_url('m3u8downloader') }
sub converter_url { return tool_url('m3u8tomp4') }
sub hls_player_url { return tool_url('hls-player') }
sub iptv_player_url { return tool_url('iptv-player') }

sub metadata {
    return {
        name => 'M3U8 Player',
        homepage => base_url(),
        description => 'Online M3U8, HLS, and IPTV stream player tools.',
        tags => [qw(m3u8player m3u8 hls iptv streaming)],
    };
}

1;

__END__

=head1 NAME

M3U8::Player::SiteKit - URL helpers for M3U8 Player

=head1 SYNOPSIS

  use M3U8::Player::SiteKit qw(player_url iptv_player_url);

  my $player = player_url();
  my $iptv = iptv_player_url();

=head1 DESCRIPTION

Small metadata and URL helpers for L<M3U8 Player|https://m3u8-player.net>,
including the online M3U8 player, HLS player, and IPTV M3U8 player pages.

=head1 LICENSE

MIT.
