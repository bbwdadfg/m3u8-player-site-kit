Pod::Spec.new do |spec|
  spec.name = "M3u8PlayerSiteKit"
  spec.version = "0.1.0"
  spec.summary = "Installable M3U8 Player, HLS player, and IPTV player link helpers."
  spec.description = <<~DESC
    M3u8PlayerSiteKit is a tiny Swift helper that exposes typed links for
    M3U8 Player, an online M3U8, HLS, and IPTV stream player with downloader
    and converter tools.
  DESC
  spec.homepage = "https://m3u8-player.net"
  spec.license = { :type => "MIT", :file => "LICENSE" }
  spec.author = { "M3U8 Player" => "hello@m3u8-player.net" }
  spec.source = {
    :git => "https://github.com/bbwdadfg/m3u8-player-site-kit.git",
    :tag => "cocoapods-v#{spec.version}"
  }
  spec.source_files = "Sources/M3u8PlayerSiteKit/**/*.swift"
  spec.swift_versions = ["5.9"]
  spec.ios.deployment_target = "13.0"
  spec.osx.deployment_target = "10.15"
  spec.social_media_url = "https://m3u8-player.net/hls-player/"
end
