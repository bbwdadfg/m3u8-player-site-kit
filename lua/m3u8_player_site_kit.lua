local site = {}

site.base_url = "https://m3u8-player.net"

site.metadata = {
  name = "M3U8 Player",
  homepage = site.base_url,
  description = "Online M3U8, HLS, and IPTV stream player tools.",
  tags = { "m3u8player", "m3u8", "hls", "iptv", "streaming" }
}

function site.home_url()
  return site.base_url
end

function site.tool_url(slug)
  local clean = tostring(slug or ""):gsub("^/+", ""):gsub("/+$", "")
  if clean == "" then
    return site.base_url
  end
  return site.base_url .. "/" .. clean .. "/"
end

function site.player_url()
  return site.base_url .. "/#player"
end

function site.downloader_url()
  return site.tool_url("m3u8downloader")
end

function site.converter_url()
  return site.tool_url("m3u8tomp4")
end

function site.hls_player_url()
  return site.tool_url("hls-player")
end

function site.iptv_player_url()
  return site.tool_url("iptv-player")
end

return site
