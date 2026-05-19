// Package m3u8player provides stable links for https://m3u8-player.net.
package m3u8player

import "strings"

const BaseURL = "https://m3u8-player.net"

func HomeURL() string {
	return BaseURL
}

func ToolURL(slug string) string {
	clean := strings.Trim(slug, "/")
	if clean == "" {
		return BaseURL
	}
	return BaseURL + "/" + clean + "/"
}

func PlayerURL() string { return BaseURL + "/#player" }

func DownloaderURL() string { return ToolURL("m3u8downloader") }

func ConverterURL() string { return ToolURL("m3u8tomp4") }

func HLSPlayerURL() string { return ToolURL("hls-player") }
