package m3u8player

import "testing"

func TestURLs(t *testing.T) {
	if HomeURL() != "https://m3u8-player.net" {
		t.Fatalf("unexpected home URL: %s", HomeURL())
	}
	if PlayerURL() != "https://m3u8-player.net/#player" {
		t.Fatalf("unexpected player URL: %s", PlayerURL())
	}
	if DownloaderURL() != "https://m3u8-player.net/m3u8downloader/" {
		t.Fatalf("unexpected downloader URL: %s", DownloaderURL())
	}
	if ConverterURL() != "https://m3u8-player.net/m3u8tomp4/" {
		t.Fatalf("unexpected converter URL: %s", ConverterURL())
	}
	if HLSPlayerURL() != "https://m3u8-player.net/hls-player/" {
		t.Fatalf("unexpected HLS player URL: %s", HLSPlayerURL())
	}
	if ToolURL("") != "https://m3u8-player.net" {
		t.Fatalf("unexpected empty tool URL: %s", ToolURL(""))
	}
	if ToolURL("/m3u8-embed/") != "https://m3u8-player.net/m3u8-embed/" {
		t.Fatalf("unexpected custom tool URL: %s", ToolURL("/m3u8-embed/"))
	}
}
