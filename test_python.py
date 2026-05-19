import unittest

import m3u8_player_site_kit as links


class M3u8PlayerSiteKitTest(unittest.TestCase):
    def test_urls(self):
        self.assertEqual(links.home_url(), "https://m3u8-player.net")
        self.assertEqual(links.player_url(), "https://m3u8-player.net/#player")
        self.assertEqual(links.downloader_url(), "https://m3u8-player.net/m3u8downloader/")
        self.assertEqual(links.converter_url(), "https://m3u8-player.net/m3u8tomp4/")
        self.assertEqual(links.hls_player_url(), "https://m3u8-player.net/hls-player/")


if __name__ == "__main__":
    unittest.main()
