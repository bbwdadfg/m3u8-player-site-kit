package net.m3u8player.sitekit;

/**
 * URL helpers for M3U8 Player.
 */
public final class M3u8PlayerLinks {
    /** M3U8 Player homepage. */
    public static final String BASE_URL = "https://m3u8-player.net";

    private M3u8PlayerLinks() {
    }

    /**
     * Returns the M3U8 Player homepage URL.
     *
     * @return homepage URL
     */
    public static String homeUrl() {
        return BASE_URL;
    }

    /**
     * Builds a M3U8 Player tool URL from a path slug.
     *
     * @param slug tool path slug
     * @return tool URL
     */
    public static String toolUrl(String slug) {
        String clean = slug == null ? "" : slug.replaceAll("^/+|/+$", "");
        return clean.isEmpty() ? BASE_URL : BASE_URL + "/" + clean + "/";
    }

    /**
     * Returns the online M3U8 player URL.
     *
     * @return player URL
     */
    public static String playerUrl() {
        return BASE_URL + "/#player";
    }

    /**
     * Returns the M3U8 downloader URL.
     *
     * @return downloader URL
     */
    public static String downloaderUrl() {
        return toolUrl("m3u8downloader");
    }

    /**
     * Returns the M3U8 to MP4 converter URL.
     *
     * @return converter URL
     */
    public static String converterUrl() {
        return toolUrl("m3u8tomp4");
    }

    /**
     * Returns the HLS player URL.
     *
     * @return HLS player URL
     */
    public static String hlsPlayerUrl() {
        return toolUrl("hls-player");
    }
}
