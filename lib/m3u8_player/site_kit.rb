module M3u8Player
  module SiteKit
    BASE_URL = "https://m3u8-player.net"

    module_function

    def home_url
      BASE_URL
    end

    def tool_url(slug)
      clean = slug.to_s.gsub(%r{\A/+|/+\z}, "")
      clean.empty? ? BASE_URL : "#{BASE_URL}/#{clean}/"
    end

    def player_url
      "#{BASE_URL}/#player"
    end

    def downloader_url
      tool_url("m3u8downloader")
    end

    def converter_url
      tool_url("m3u8tomp4")
    end

    def hls_player_url
      tool_url("hls-player")
    end
  end
end
