cask "kiln" do
  version "0.7.1"
  sha256 "ba9f770e84b57ccd61a10f38107c127b4b9f50a66c0302a7f7f6c89a14f4292e"

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
