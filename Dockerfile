FROM alpine:3.22

LABEL org.opencontainers.image.title="m3u8-player-site-kit"
LABEL org.opencontainers.image.description="Small URL helpers for M3U8 Player, the free M3U8 downloader, converter, and HLS player."
LABEL org.opencontainers.image.url="https://m3u8-player.net"
LABEL org.opencontainers.image.source="https://github.com/bbwdadfg/m3u8-player-site-kit"
LABEL org.opencontainers.image.licenses="MIT"

COPY docker/m3u8-player-site-kit /usr/local/bin/m3u8-player-site-kit

ENTRYPOINT ["m3u8-player-site-kit"]
CMD ["home"]
