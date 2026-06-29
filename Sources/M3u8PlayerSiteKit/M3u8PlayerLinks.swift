import Foundation

public enum M3u8PlayerLinks {
    public static let home = URL(string: "https://m3u8-player.net")!
    public static let onlinePlayer = URL(string: "https://m3u8-player.net/#player")!
    public static let downloader = URL(string: "https://m3u8-player.net/m3u8downloader/")!
    public static let converter = URL(string: "https://m3u8-player.net/m3u8tomp4/")!
    public static let hlsPlayer = URL(string: "https://m3u8-player.net/hls-player/")!
    public static let iptvPlayer = URL(string: "https://m3u8-player.net/iptv-player/")!

    public static func tool(_ slug: String) -> URL {
        let clean = slug.trimmingCharacters(in: CharacterSet(charactersIn: "/"))
        guard !clean.isEmpty else {
            return home
        }
        return URL(string: "https://m3u8-player.net/\(clean)/")!
    }
}
