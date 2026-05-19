defmodule M3u8PlayerSiteKit.MixProject do
  use Mix.Project

  def project do
    [
      app: :m3u8_player_site_kit,
      version: "0.1.0",
      elixir: "~> 1.18",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: "Small URL helpers for M3U8 Player, the free M3U8 downloader, converter, and HLS player.",
      package: package(),
      docs: [
        main: "M3u8PlayerSiteKit",
        source_url: "https://github.com/bbwdadfg/m3u8-player-site-kit"
      ]
    ]
  end

  def application do
    [extra_applications: [:logger]]
  end

  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end

  defp package do
    [
      licenses: ["MIT"],
      links: %{
        "M3U8 Player" => "https://m3u8-player.net",
        "M3U8 downloader" => "https://m3u8-player.net/m3u8downloader/",
        "M3U8 to MP4" => "https://m3u8-player.net/m3u8tomp4/",
        "GitHub" => "https://github.com/bbwdadfg/m3u8-player-site-kit"
      },
      files: ["lib/m3u8_player_site_kit.ex", "mix.exs", "README.md", "LICENSE"]
    ]
  end
end
