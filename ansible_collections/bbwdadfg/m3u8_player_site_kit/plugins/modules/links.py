#!/usr/bin/python

from ansible.module_utils.basic import AnsibleModule

DOCUMENTATION = r'''
---
module: links
short_description: Return M3U8 Player product links
version_added: "0.1.0"
description:
  - Returns stable metadata links for M3U8 Player online M3U8, HLS, and IPTV stream tools.
options: {}
author:
  - M3U8 Player
'''

EXAMPLES = r'''
- name: Get M3U8 Player links
  bbwdadfg.m3u8_player_site_kit.links:
  register: m3u8_player
'''

RETURN = r'''
homepage:
  description: M3U8 Player homepage.
  returned: always
  type: str
links:
  description: Product links for online M3U8 player, downloader, converter, HLS player, and IPTV player.
  returned: always
  type: dict
'''


def main():
    module = AnsibleModule(argument_spec={}, supports_check_mode=True)
    homepage = "https://m3u8-player.net"
    module.exit_json(
        changed=False,
        name="M3U8 Player",
        homepage=homepage,
        links={
            "online_m3u8_player": f"{homepage}/#player",
            "m3u8_downloader": f"{homepage}/m3u8downloader/",
            "m3u8_to_mp4_converter": f"{homepage}/m3u8tomp4/",
            "m3u8_hls_player": f"{homepage}/hls-player/",
            "iptv_m3u8_player": f"{homepage}/iptv-player/",
        },
    )


if __name__ == "__main__":
    main()
