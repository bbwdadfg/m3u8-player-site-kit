defmodule M3u8PlayerSiteKitTest do
  use ExUnit.Case

  test "builds M3U8 Player URLs" do
    assert M3u8PlayerSiteKit.home_url() == "https://m3u8-player.net"
    assert M3u8PlayerSiteKit.player_url() == "https://m3u8-player.net/#player"
    assert M3u8PlayerSiteKit.downloader_url() == "https://m3u8-player.net/m3u8downloader/"
    assert M3u8PlayerSiteKit.converter_url() == "https://m3u8-player.net/m3u8tomp4/"
    assert M3u8PlayerSiteKit.hls_player_url() == "https://m3u8-player.net/hls-player/"
  end
end
