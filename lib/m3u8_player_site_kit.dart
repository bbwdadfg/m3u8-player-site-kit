const baseUrl = 'https://m3u8-player.net';

String homeUrl() => baseUrl;

String toolUrl(String slug) {
  final clean = slug.replaceAll(RegExp(r'^/+|/+$'), '');
  return clean.isEmpty ? baseUrl : '$baseUrl/$clean/';
}

String playerUrl() => '$baseUrl/#player';

String downloaderUrl() => toolUrl('m3u8downloader');

String converterUrl() => toolUrl('m3u8tomp4');

String hlsPlayerUrl() => toolUrl('hls-player');
