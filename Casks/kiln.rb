cask "kiln" do
  version "0.10.1"
  sha256 "195f08f9c5d6a606ec928e92344e1e5ae59d874636932e720961fe9f78ead2bb"

  url "https://github.com/mcclowes/homebrew-kiln/releases/download/v#{version}/Kiln-#{version}.zip"
  name "Kiln"
  desc "Native macOS IDE and LLM harness"
  homepage "https://github.com/mcclowes/kiln"

  depends_on macos: :tahoe
  depends_on arch: :arm64

  app "Kiln.app"

  zap trash: [
    "~/Library/Application Support/kiln",
    "~/Library/Preferences/com.mcclowes.kiln.plist",
    "~/Library/Saved Application State/com.mcclowes.kiln.savedState",
  ]
end
