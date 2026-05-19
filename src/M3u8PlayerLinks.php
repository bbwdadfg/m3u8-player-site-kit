<?php

declare(strict_types=1);

namespace M3u8Player\SiteKit;

final class M3u8PlayerLinks
{
    public const BASE_URL = 'https://m3u8-player.net';

    public static function homeUrl(): string
    {
        return self::BASE_URL;
    }

    public static function toolUrl(string $slug): string
    {
        $clean = trim($slug, '/');
        return $clean === '' ? self::BASE_URL : self::BASE_URL . '/' . $clean . '/';
    }

    public static function playerUrl(): string
    {
        return self::BASE_URL . '/#player';
    }

    public static function downloaderUrl(): string
    {
        return self::toolUrl('m3u8downloader');
    }

    public static function converterUrl(): string
    {
        return self::toolUrl('m3u8tomp4');
    }

    public static function hlsPlayerUrl(): string
    {
        return self::toolUrl('hls-player');
    }
}
