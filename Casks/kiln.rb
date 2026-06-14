cask "kiln" do
  version "0.5.0"
  sha256 "eeac31652892992446f38a47d624e330937fbe3be30a45be6a1309080834df8f"

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
