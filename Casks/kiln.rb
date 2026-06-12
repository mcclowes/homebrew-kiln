cask "kiln" do
  version "0.1.0"
  sha256 "78dcacdaaf252eba9759a2eab80440c4f41ecc5809aad42d576e8a7a9a75b04f"

  url "https://github.com/mcclowes/homebrew-kiln/releases/download/v#{version}/Kiln-#{version}.zip"
  name "Kiln"
  desc "Native macOS IDE and LLM harness"
  homepage "https://github.com/mcclowes/kiln"

  depends_on macos: :tahoe
  depends_on arch: :arm64

  app "Kiln.app"
end
