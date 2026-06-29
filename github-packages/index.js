const BASE_URL = "https://m3u8-player.net";

function toolUrl(slug = "") {
  const clean = String(slug).replace(/^\/+|\/+$/g, "");
  return clean ? `${BASE_URL}/${clean}/` : BASE_URL;
}

module.exports = {
  BASE_URL,
  metadata: {
    name: "M3U8 Player",
    homepage: BASE_URL,
    description: "Online M3U8, HLS, and IPTV stream player tools."
  },
  homeUrl: () => BASE_URL,
  playerUrl: () => `${BASE_URL}/#player`,
  downloaderUrl: () => toolUrl("m3u8downloader"),
  converterUrl: () => toolUrl("m3u8tomp4"),
  hlsPlayerUrl: () => toolUrl("hls-player"),
  iptvPlayerUrl: () => toolUrl("iptv-player"),
  toolUrl
};
