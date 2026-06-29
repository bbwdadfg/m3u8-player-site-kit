using M3u8PlayerSiteKit;
using Xunit;

namespace M3u8PlayerSiteKitTests;

public sealed class SiteKitTests
{
    [Fact]
    public void ExposesStableProductUrls()
    {
        Assert.Equal("https://m3u8-player.net", SiteKit.HomeUrl());
        Assert.Equal("https://m3u8-player.net/#player", SiteKit.PlayerUrl());
        Assert.Equal("https://m3u8-player.net/m3u8downloader/", SiteKit.DownloaderUrl());
        Assert.Equal("https://m3u8-player.net/m3u8tomp4/", SiteKit.ConverterUrl());
        Assert.Equal("https://m3u8-player.net/hls-player/", SiteKit.HlsPlayerUrl());
        Assert.Equal("https://m3u8-player.net/iptv-player/", SiteKit.IptvPlayerUrl());
    }

    [Fact]
    public void TrimsToolSlugs()
    {
        Assert.Equal("https://m3u8-player.net/iptv-player-m3u/", SiteKit.ToolUrl("/iptv-player-m3u/"));
    }
}
