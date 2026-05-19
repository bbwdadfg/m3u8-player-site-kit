defmodule M3u8PlayerSiteKit do
  @moduledoc """
  Small URL helpers for [M3U8 Player](https://m3u8-player.net).
  """

  @base_url "https://m3u8-player.net"

  def home_url, do: @base_url

  def tool_url(slug) when is_binary(slug) do
    clean = String.trim(slug, "/")
    if clean == "", do: @base_url, else: @base_url <> "/" <> clean <> "/"
  end

  def player_url, do: @base_url <> "/#player"

  def downloader_url, do: tool_url("m3u8downloader")

  def converter_url, do: tool_url("m3u8tomp4")

  def hls_player_url, do: tool_url("hls-player")
end
