# M3U8 Player Site Kit Ansible Collection

Small Ansible module for [M3U8 Player](https://m3u8-player.net), including links for the [online M3U8 player](https://m3u8-player.net/#player), [M3U8 HLS player](https://m3u8-player.net/hls-player/), [M3U8 downloader](https://m3u8-player.net/m3u8downloader/), and [IPTV M3U8 player](https://m3u8-player.net/iptv-player/).

## Example

```yaml
- name: Get M3U8 Player links
  bbwdadfg.m3u8_player_site_kit.links:
  register: m3u8_player
```
