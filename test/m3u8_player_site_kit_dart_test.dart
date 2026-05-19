import 'package:test/test.dart';
import 'package:m3u8_player_site_kit/m3u8_player_site_kit.dart' as links;

void main() {
  test('builds M3U8 Player URLs', () {
    expect(links.homeUrl(), 'https://m3u8-player.net');
    expect(links.playerUrl(), 'https://m3u8-player.net/#player');
    expect(links.downloaderUrl(), 'https://m3u8-player.net/m3u8downloader/');
    expect(links.converterUrl(), 'https://m3u8-player.net/m3u8tomp4/');
    expect(links.hlsPlayerUrl(), 'https://m3u8-player.net/hls-player/');
  });
}
