cask "omac" do
  version "0.9.0-beta28-rc61-pointer-follow"
  sha256 "73552a7e0c7a4cdd0867c7ad697aa12c17af39d29f8d15298305f3c170c27cc6"

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
