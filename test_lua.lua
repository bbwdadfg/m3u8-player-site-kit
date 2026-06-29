package.path = "./lua/?.lua;" .. package.path

local site = require("m3u8_player_site_kit")

assert(site.home_url() == "https://m3u8-player.net")
assert(site.player_url() == "https://m3u8-player.net/#player")
assert(site.downloader_url() == "https://m3u8-player.net/m3u8downloader/")
assert(site.converter_url() == "https://m3u8-player.net/m3u8tomp4/")
assert(site.hls_player_url() == "https://m3u8-player.net/hls-player/")
assert(site.iptv_player_url() == "https://m3u8-player.net/iptv-player/")
assert(site.tool_url("/iptv-player-m3u/") == "https://m3u8-player.net/iptv-player-m3u/")
assert(site.metadata.homepage == "https://m3u8-player.net")
