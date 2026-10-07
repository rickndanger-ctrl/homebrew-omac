cask "omac" do
  version "0.9.0-beta26"
  sha256 "78a7e5a5ee1c64d58bb05aebf3d07e40e57e2361dff9eb4d03930bef1050097d"

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
