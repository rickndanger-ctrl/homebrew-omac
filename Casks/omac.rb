cask "omac" do
  version "0.9.0-beta28-rc78"
  sha256 "b0fda90ee65889d6d291498a1923d540c197ed5bbb4627b3b2833b64f7c695f4"

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
