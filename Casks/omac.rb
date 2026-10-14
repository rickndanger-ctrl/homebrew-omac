cask "omac" do
  version "0.9.0-beta28-rc75"
  sha256 "2e013a3b1dcc94da5707e788aea0ebdab6481454653c19aebdfa4cb48199a69d"

  url "https://github.com/rickndanger-ctrl/omac/releases/download/v#{version}/OMAC-#{version}.dmg"
  name "OMAC"
  desc "Tiling window manager built for AI agents"
  homepage "https://rickndanger-ctrl.github.io/omac/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+(?:-beta\d+)?)$/i)
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "OMAC.app"

  zap trash: [
    "~/Library/Application Support/OMAC",
    "~/Library/Preferences/org.richardholguin.omac.plist",
  ]
end
