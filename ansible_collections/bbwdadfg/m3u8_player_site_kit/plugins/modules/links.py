#!/usr/bin/python

from ansible.module_utils.basic import AnsibleModule


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
