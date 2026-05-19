pub const BASE_URL: &str = "https://m3u8-player.net";

pub fn home_url() -> &'static str {
    BASE_URL
}

pub fn tool_url(slug: &str) -> String {
    let clean = slug.trim_matches('/');
    if clean.is_empty() {
        BASE_URL.to_string()
    } else {
        format!("{BASE_URL}/{clean}/")
    }
}

pub fn player_url() -> String { format!("{BASE_URL}/#player") }

pub fn downloader_url() -> String { tool_url("m3u8downloader") }

pub fn converter_url() -> String { tool_url("m3u8tomp4") }

pub fn hls_player_url() -> String { tool_url("hls-player") }

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn builds_links() {
        assert_eq!(home_url(), "https://m3u8-player.net");
        assert_eq!(player_url(), "https://m3u8-player.net/#player");
        assert_eq!(downloader_url(), "https://m3u8-player.net/m3u8downloader/");
        assert_eq!(converter_url(), "https://m3u8-player.net/m3u8tomp4/");
        assert_eq!(hls_player_url(), "https://m3u8-player.net/hls-player/");
    }
}
