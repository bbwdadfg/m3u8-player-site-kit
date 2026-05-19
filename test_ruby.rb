$LOAD_PATH.unshift(File.expand_path("lib", __dir__))
require "m3u8_player/site_kit"

raise "home" unless M3u8Player::SiteKit.home_url == "https://m3u8-player.net"
raise "player" unless M3u8Player::SiteKit.player_url == "https://m3u8-player.net/#player"
raise "downloader" unless M3u8Player::SiteKit.downloader_url == "https://m3u8-player.net/m3u8downloader/"
raise "converter" unless M3u8Player::SiteKit.converter_url == "https://m3u8-player.net/m3u8tomp4/"
raise "hls" unless M3u8Player::SiteKit.hls_player_url == "https://m3u8-player.net/hls-player/"
