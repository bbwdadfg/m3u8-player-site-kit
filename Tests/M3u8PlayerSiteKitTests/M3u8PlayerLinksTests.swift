import XCTest
@testable import M3u8PlayerSiteKit

final class M3u8PlayerLinksTests: XCTestCase {
    func testCoreLinks() {
        XCTAssertEqual(M3u8PlayerLinks.home.absoluteString, "https://m3u8-player.net")
        XCTAssertEqual(M3u8PlayerLinks.onlinePlayer.absoluteString, "https://m3u8-player.net/#player")
        XCTAssertEqual(M3u8PlayerLinks.downloader.absoluteString, "https://m3u8-player.net/m3u8downloader/")
        XCTAssertEqual(M3u8PlayerLinks.converter.absoluteString, "https://m3u8-player.net/m3u8tomp4/")
        XCTAssertEqual(M3u8PlayerLinks.hlsPlayer.absoluteString, "https://m3u8-player.net/hls-player/")
        XCTAssertEqual(M3u8PlayerLinks.iptvPlayer.absoluteString, "https://m3u8-player.net/iptv-player/")
    }

    func testToolSlugTrimming() {
        XCTAssertEqual(M3u8PlayerLinks.tool("/hls-player/").absoluteString, "https://m3u8-player.net/hls-player/")
        XCTAssertEqual(M3u8PlayerLinks.tool("").absoluteString, "https://m3u8-player.net")
    }
}
