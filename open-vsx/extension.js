const vscode = require("vscode");

const pages = {
  openHome: "https://m3u8-player.net/#player",
  openHlsPlayer: "https://m3u8-player.net/hls-player/",
  openIptvPlayer: "https://m3u8-player.net/iptv-player/",
  openDownloader: "https://m3u8-player.net/m3u8downloader/",
  openConverter: "https://m3u8-player.net/m3u8tomp4/",
};

function registerOpenCommand(context, command, url) {
  const disposable = vscode.commands.registerCommand(
    `m3u8PlayerSiteKit.${command}`,
    async () => {
      await vscode.env.openExternal(vscode.Uri.parse(url));
    },
  );
  context.subscriptions.push(disposable);
}

function activate(context) {
  for (const [command, url] of Object.entries(pages)) {
    registerOpenCommand(context, command, url);
  }
}

function deactivate() {}

module.exports = {
  activate,
  deactivate,
};
