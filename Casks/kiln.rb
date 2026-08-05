cask "kiln" do
  version "0.11.0"
  sha256 "10dc0041cd23728b02074f722fc58e833e399c27989ab07a9580602a02ff1903"

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
