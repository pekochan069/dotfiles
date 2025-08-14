$winget-list = @(
  "JanDeDobbeleer.OhMyPosh",
  "ajeetdsouza.zoxide",
  "lsd-rs.lsd",
  "Neovim.Neovim.Nightly",
  "Microsoft.VisualStudioCode",
  "Schniz.fnm",
  "uutils.coreutils",
  "JesseDuffield.lazygit",
  "sxyazi.yazi",
  "Gyan.FFmpeg",
  "7zip.7zip",
  "jqlang.jq",
  "sharkdp.fd",
  "BurntSushi.ripgrep.MSVC",
  "junegunn.fzf",
  "ajeetdsouza.zoxide",
  "ImageMagick.ImageMagick",
  "jdx.mise",
  "LLVM.LLVM",
  "AutoHotkey.AutoHotkey",
  "sharkdp.bat",
  "Cloudflare.Warp",
  "qarmin.czkawka.cli",
  "dandavison.delta",
  "Discord.Discord",
  "sharkdp.fd",
  "GitHub.cli",
  "gerardog.gsudo",
  "HandBrake.HandBrake",
  "DEVCOM.JetBrainsMonoNerdFont",
  "CondaForge.Miniforge3",
  "nilesoft.shell",
  "Ninja-build.Ninja",
  "BurntSushi.ripgrep.MSVC",
  "OBSProject.OBSStudio",
  "Rustlang.Rustup",
  "SublimeHQ.SublimeText.4",
  "dbrgn.tealdeer",
  "JAMSoftware.TreeSize.Free",
  "Bandisoft.Bandizip",
  "astral-sh.uv",
  "Ventoy.Ventoy",
  "VideoLAN.VLC",
  "GNU.Wget2",
  "MartiCliment.UniGetUI",
  "Xmake-io.Xmake",
  "yt-dlp.yt-dlp",
  "M2Team.NanaZip",
  "GlazeWM",
  "glzr-io.zebar",
  "RazerInc.RazerInstaller.Synapse4",
  "CodecGuide.K-LiteCodecPack.Standard",
  "AdrienAllard.FileConverter",
  "DevToys-app.DevToys",
  "Brave.Brave",
  "Mozilla.Firefox",
  "Google.Chrome",
  "eloston.ungoogled-chromium",
)

$scoop-list = @(
  "scoop-search",
  "flow-launcher",
  "vial",
  "chromium"
)

foreach ($item in $winget-list) {
  winget install $item -s winget
}

Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression

foreach ($item in $scoop-list) {
  scoop install $item    
}
