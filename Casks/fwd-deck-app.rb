cask "fwd-deck-app" do
  version "0.3.4"
  sha256 "7c60e67ba2971aab042ddaff3a8a0d7eb84b0331eec5b920e5cd70a5fb3beca9"

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
