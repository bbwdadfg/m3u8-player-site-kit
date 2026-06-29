# Publish Record: M3U8 Player

- Site: <https://m3u8-player.net>
- Source repo: <https://github.com/bbwdadfg/m3u8-player-site-kit>
- Started: 2026-06-29T08:20:00Z
- Finished: 2026-06-29T08:34:33Z

## Summary

| Status | Count |
| --- | ---: |
| blocked_credentials | 2 |
| blocked_namespace | 1 |
| planned | 2 |
| published | 1 |
| skipped_not_applicable | 10 |
| submitted | 1 |
| verified | 14 |

## Published Links

| Platform | Package | Version | Public URL | Verification |
| --- | --- | --- | --- | --- |
| github | `bbwdadfg/m3u8-player-site-kit` | `v0.1.0 + platform tags` | <https://github.com/bbwdadfg/m3u8-player-site-kit> | Repository is public and homepage is https://m3u8-player.net. |
| pkg_go_dev | `github.com/bbwdadfg/m3u8-player-site-kit` | `v0.1.0` | <https://pkg.go.dev/github.com/bbwdadfg/m3u8-player-site-kit> | Go proxy returned v0.1.0 and pkg.go.dev page was previously published. |
| packagist | `bbwdadfg/m3u8-player-site-kit` | `v0.1.0` | <https://packagist.org/packages/bbwdadfg/m3u8-player-site-kit> | Existing package is published with homepage and source metadata. |
| crates_io_docs_rs | `m3u8-player-site-kit` | `0.1.0` | <https://crates.io/crates/m3u8-player-site-kit> | crates.io API returned 0.1.0 and homepage https://m3u8-player.net. |
| rubygems | `m3u8-player-site-kit` | `0.1.0` | <https://rubygems.org/gems/m3u8-player-site-kit> | RubyGems API returned package metadata. |
| npm | `m3u8-player-site-kit` | `0.1.0` | <https://www.npmjs.com/package/m3u8-player-site-kit> | npm registry returned version 0.1.0, homepage, and repository. |
| pypi | `m3u8-player-site-kit` | `0.1.0` | <https://pypi.org/project/m3u8-player-site-kit/> | PyPI JSON API returned package metadata. |
| pub_dev | `m3u8_player_site_kit` | `0.1.0` | <https://pub.dev/packages/m3u8_player_site_kit> | pub.dev API returned package metadata. |
| hex_hexdocs | `m3u8_player_site_kit` | `0.1.0` | <https://hex.pm/packages/m3u8_player_site_kit> | Hex API returned package metadata; HexDocs page exists. |
| clojars | `net.clojars.tianwei/m3u8-player-site-kit` | `0.1.0` | <https://clojars.org/net.clojars.tianwei/m3u8-player-site-kit> | Clojars Maven metadata returned release 0.1.0. |
| docker_hub | `baiwei111/m3u8-player-site-kit` | `0.1.0/latest` | <https://hub.docker.com/r/baiwei111/m3u8-player-site-kit> | Previous run verified Docker manifest digest and Docker Hub overview. |
| nuget | `M3u8PlayerSiteKit` | `0.1.0` | <https://www.nuget.org/packages/M3u8PlayerSiteKit/0.1.0> | NuGet package page returned 200 and README links include M3U8 Player, online M3U8 player, M3U8 downloader, M3U8 to MP4 converter, M3U8 HLS player, and IPTV M3U8 player. |
| luarocks | `m3u8-player-site-kit` | `0.1.0-1` | <https://luarocks.org/modules/bbwdadfg/m3u8-player-site-kit> | LuaRocks page returned 200 and shows homepage https://m3u8-player.net plus version 0.1.0-1. |
| chocolatey | `m3u8-player-site-kit` | `0.1.0` | <https://community.chocolatey.org/packages/m3u8-player-site-kit> | Chocolatey page returned 200 with project URL https://m3u8-player.net and status Pending automated review. |
| github_packages | `@bbwdadfg/m3u8-player-site-kit` | `0.1.0` | <https://github.com/users/bbwdadfg/packages/npm/package/m3u8-player-site-kit> | Package published to npm.pkg.github.com and authenticated metadata shows version 0.1.0 plus homepage/repository. |
| gitlab_packages | `baiwei.chu/m3u8-player-site-kit:m3u8-player-site-kit` | `0.1.0` | <https://gitlab.com/baiwei.chu/m3u8-player-site-kit/-/packages> | GitLab project and packages page returned 200; unauthenticated package download SHA256 matched uploaded archive. |

## Blocked Or Manual Steps

| Platform | Status | Reason | Owner |
| --- | --- | --- | --- |
| jsr | `blocked_namespace` | Create/approve @bbwdadfg/m3u8-player-site-kit on JSR and rotate the exposed JSR token before rerun. | user |
| github_packages | `published` | Make the GitHub Packages npm package public through the GitHub UI or a token with package visibility permission. | user |
| cpan_metacpan | `blocked_credentials` | Replace or refresh PAUSE/CPAN credentials in Keychain, then rerun cpan-upload. | user |
| hackage | `blocked_credentials` | Add a Hackage token to Keychain if Hackage is still desired. | user |
| maven_central_javadoc | `planned` | Prepare Central-ready signed Maven artifact under io.github.bbwdadfg. | agent |
| cocoapods | `planned` | Prepare Swift podspec and publish with existing CocoaPods token. | agent |
| chocolatey | `submitted` | Recheck moderation status until automated review completes. | agent |

## Failed Platforms

None. Blocked platforms are credentials, namespace, visibility, or review issues, not package rejection.

## Credential Cleanup

- npm: temporary npmrc deleted in previous run.
- jsr: temporary token shell variable unset.
- nuget: NUGET_API_KEY environment cleared after command.
- luarocks: temporary API key shell variable unset.
- cpan_metacpan: temporary PAUSE config removed.
- chocolatey: NUGET_API_KEY environment cleared after command.
- github_packages: temporary npmrc deleted.
- gitlab_packages: temporary curl config removed.
- JSR: token value was not stored in records, but the CLI echoed it in failed command output. Rotate the JSR token before retrying.

## Follow-Up Queue

- jsr: Create/approve @bbwdadfg/m3u8-player-site-kit on JSR and rotate the exposed JSR token before rerun. (user)
- github_packages: Make the GitHub Packages npm package public through the GitHub UI or a token with package visibility permission. (user)
- cpan_metacpan: Replace or refresh PAUSE/CPAN credentials in Keychain, then rerun cpan-upload. (user)
- hackage: Add a Hackage token to Keychain if Hackage is still desired. (user)
- maven_central_javadoc: Prepare Central-ready signed Maven artifact under io.github.bbwdadfg. (agent)
- cocoapods: Prepare Swift podspec and publish with existing CocoaPods token. (agent)
- chocolatey: Recheck moderation status until automated review completes. (agent)
