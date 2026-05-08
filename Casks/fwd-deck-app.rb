cask "fwd-deck-app" do
  version "0.3.16"
  sha256 "66b17fad4e056379982ada3e3017279fc1e97b6852d0fa863d26b5e8b89ea48d"

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
