const assert = require("node:assert/strict");
const links = require("./index");

assert.equal(links.homeUrl(), "https://m3u8-player.net");
assert.equal(links.playerUrl(), "https://m3u8-player.net/#player");
assert.equal(links.downloaderUrl(), "https://m3u8-player.net/m3u8downloader/");
assert.equal(links.converterUrl(), "https://m3u8-player.net/m3u8tomp4/");
assert.equal(links.hlsPlayerUrl(), "https://m3u8-player.net/hls-player/");
