cask "omac" do
  version "0.9.0-beta28-rc149"
  sha256 "35fb5567e91cf034f69a117743bf9f0d2559ce4446449b7c6536fa4a5bf64fee"

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
