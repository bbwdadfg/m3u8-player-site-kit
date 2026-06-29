export const BASE_URL = "https://m3u8-player.net";

export type SiteMetadata = {
  readonly name: string;
  readonly homepage: string;
  readonly description: string;
  readonly canonicalPages: {
    readonly home: string;
    readonly player: string;
    readonly downloader: string;
    readonly converter: string;
    readonly hlsPlayer: string;
    readonly iptvPlayer: string;
  };
  readonly tags: readonly string[];
};

export const siteMetadata: SiteMetadata = {
  name: "M3U8 Player",
  homepage: BASE_URL,
  description: "Online M3U8, HLS, and IPTV stream player tools.",
  canonicalPages: {
    home: BASE_URL,
    player: `${BASE_URL}/#player`,
    downloader: `${BASE_URL}/m3u8downloader/`,
    converter: `${BASE_URL}/m3u8tomp4/`,
    hlsPlayer: `${BASE_URL}/hls-player/`,
    iptvPlayer: `${BASE_URL}/iptv-player/`,
  },
  tags: ["m3u8player", "m3u8", "hls", "iptv", "streaming"],
};

export function homeUrl(): string {
  return BASE_URL;
}

export function toolUrl(slug = ""): string {
  const clean = String(slug).replace(/^\/+|\/+$/g, "");
  return clean ? `${BASE_URL}/${clean}/` : BASE_URL;
}

export function playerUrl(): string {
  return `${BASE_URL}/#player`;
}

export function downloaderUrl(): string {
  return toolUrl("m3u8downloader");
}

export function converterUrl(): string {
  return toolUrl("m3u8tomp4");
}

export function hlsPlayerUrl(): string {
  return toolUrl("hls-player");
}

export function iptvPlayerUrl(): string {
  return toolUrl("iptv-player");
}
