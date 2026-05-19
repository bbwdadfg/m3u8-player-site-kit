BASE_URL = "https://m3u8-player.net"


def home_url() -> str:
    return BASE_URL


def tool_url(slug: str) -> str:
    clean = slug.strip("/")
    return BASE_URL if clean == "" else f"{BASE_URL}/{clean}/"


def player_url() -> str:
    return f"{BASE_URL}/#player"


def downloader_url() -> str:
    return tool_url("m3u8downloader")


def converter_url() -> str:
    return tool_url("m3u8tomp4")


def hls_player_url() -> str:
    return tool_url("hls-player")
