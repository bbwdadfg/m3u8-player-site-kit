function Get-M3u8PlayerSiteKit {
    [CmdletBinding()]
    param()

    [PSCustomObject]@{
        Name = "M3U8 Player"
        Homepage = "https://m3u8-player.net"
        OnlinePlayer = "https://m3u8-player.net/#player"
        Downloader = "https://m3u8-player.net/m3u8downloader/"
        Converter = "https://m3u8-player.net/m3u8tomp4/"
        HlsPlayer = "https://m3u8-player.net/hls-player/"
        IptvPlayer = "https://m3u8-player.net/iptv-player/"
    }
}

Export-ModuleMember -Function Get-M3u8PlayerSiteKit
