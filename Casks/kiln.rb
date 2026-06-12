cask "kiln" do
  version "0.2.0"
  sha256 "1701034485abdd20ad3c215dc07df91af6e3d103e62d3bbf9d7acef0f8bf8ecd"

  url "https://github.com/mcclowes/homebrew-kiln/releases/download/v#{version}/Kiln-#{version}.zip"
  name "Kiln"
  desc "Native macOS IDE and LLM harness"
  homepage "https://github.com/mcclowes/kiln"

  depends_on macos: :tahoe
  depends_on arch: :arm64

  app "Kiln.app"

  zap trash: [
    "~/Library/Application Support/destill",
    "~/Library/Preferences/com.mcclowes.kiln.plist",
    "~/Library/Saved Application State/com.mcclowes.kiln.savedState",
  ]
end
