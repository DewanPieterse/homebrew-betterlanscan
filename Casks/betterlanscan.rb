cask "betterlanscan" do
  version "1.0.2"
  sha256 "8fe48366046e9ddc0727d1c0ce5212a1856c6955e2a7b0e007161e9c1c4f16f5"

  url "https://github.com/DewanPieterse/BetterLanScan/releases/download/v#{version}/BetterLanScan-#{version}.zip"
  name "BetterLanScan"
  desc "Scans the local network for devices and surveys nearby Wi-Fi networks"
  homepage "https://github.com/DewanPieterse/BetterLanScan"

  # Ad-hoc signed (not notarized); Gatekeeper shows an "unidentified developer"
  # prompt on first launch — right-click ▸ Open, or System Settings ▸ Privacy
  # & Security ▸ Open Anyway. Install with --no-quarantine to skip the prompt:
  #   brew install --cask --no-quarantine betterlanscan
  depends_on macos: ">= :big_sur"

  app "BetterLanScan.app"

  zap trash: [
    "~/Library/Application Support/BetterLanScan",
  ]
end
