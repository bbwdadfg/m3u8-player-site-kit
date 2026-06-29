namespace M3u8PlayerSiteKit;

public static class SiteKit
{
    public const string BaseUrl = "https://m3u8-player.net";

    public static string HomeUrl() => BaseUrl;

    public static string ToolUrl(string slug)
    {
        var clean = slug.Trim('/');
        return clean.Length == 0 ? BaseUrl : $"{BaseUrl}/{clean}/";
    }

    public static string PlayerUrl() => $"{BaseUrl}/#player";

    public static string DownloaderUrl() => ToolUrl("m3u8downloader");

    public static string ConverterUrl() => ToolUrl("m3u8tomp4");

    public static string HlsPlayerUrl() => ToolUrl("hls-player");

    public static string IptvPlayerUrl() => ToolUrl("iptv-player");
}
