import {
  converterUrl,
  downloaderUrl,
  hlsPlayerUrl,
  homeUrl,
  iptvPlayerUrl,
  playerUrl,
  siteMetadata,
  toolUrl,
} from "./mod.ts";
import { assertEquals, assertMatch } from "jsr:@std/assert@1";

Deno.test("exports stable M3U8 Player links", () => {
  assertEquals(homeUrl(), "https://m3u8-player.net");
  assertEquals(playerUrl(), "https://m3u8-player.net/#player");
  assertEquals(downloaderUrl(), "https://m3u8-player.net/m3u8downloader/");
  assertEquals(converterUrl(), "https://m3u8-player.net/m3u8tomp4/");
  assertEquals(hlsPlayerUrl(), "https://m3u8-player.net/hls-player/");
  assertEquals(iptvPlayerUrl(), "https://m3u8-player.net/iptv-player/");
  assertEquals(toolUrl("/iptv-player-m3u/"), "https://m3u8-player.net/iptv-player-m3u/");
});

Deno.test("metadata contains homepage and product terms", () => {
  assertEquals(siteMetadata.homepage, "https://m3u8-player.net");
  assertMatch(siteMetadata.description, /M3U8/);
  assertMatch(siteMetadata.description, /HLS/);
  assertMatch(siteMetadata.description, /IPTV/);
});
