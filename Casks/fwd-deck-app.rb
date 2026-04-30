cask "fwd-deck-app" do
  version "0.2.0"
  sha256 "8c5e8330f2799a6415edf95da2a2998c684a1f1d966542a82816057d3868edd4"

  url "https://github.com/oiekjr/fwd-deck/releases/download/v#{version}/fwd-deck-app_#{version}_universal.dmg",
      verified: "github.com/oiekjr/fwd-deck/"
  name "Fwd Deck"
  desc "GUI for fwd-deck local SSH port forwarding profiles"
  homepage "https://github.com/oiekjr/fwd-deck"

  app "Fwd Deck.app", target: "Fwd Deck.app"

  zap trash: [
    "~/Library/Application Support/dev.oiekjr.fwddeck",
    "~/Library/Preferences/dev.oiekjr.fwddeck.plist",
    "~/Library/Saved Application State/dev.oiekjr.fwddeck.savedState",
  ]
end
