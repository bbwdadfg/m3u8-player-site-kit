const BASE_URL = "https://m3u8-player.net";

function homeUrl() {
  return BASE_URL;
}

function toolUrl(slug = "") {
  const clean = String(slug).replace(/^\/+|\/+$/g, "");
  return clean ? `${BASE_URL}/${clean}/` : BASE_URL;
}

const playerUrl = () => `${BASE_URL}/#player`;
const downloaderUrl = () => toolUrl("m3u8downloader");
const converterUrl = () => toolUrl("m3u8tomp4");
const hlsPlayerUrl = () => toolUrl("hls-player");

module.exports = {
  BASE_URL,
  homeUrl,
  toolUrl,
  playerUrl,
  downloaderUrl,
  converterUrl,
  hlsPlayerUrl
};
