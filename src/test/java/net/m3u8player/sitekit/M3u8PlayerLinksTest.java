package net.m3u8player.sitekit;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;

class M3u8PlayerLinksTest {
    @Test
    void buildsUrls() {
        assertEquals("https://m3u8-player.net", M3u8PlayerLinks.homeUrl());
        assertEquals("https://m3u8-player.net/#player", M3u8PlayerLinks.playerUrl());
        assertEquals("https://m3u8-player.net/m3u8downloader/", M3u8PlayerLinks.downloaderUrl());
        assertEquals("https://m3u8-player.net/m3u8tomp4/", M3u8PlayerLinks.converterUrl());
        assertEquals("https://m3u8-player.net/hls-player/", M3u8PlayerLinks.hlsPlayerUrl());
    }
}
