cask "fwd-deck-app" do
  version "26.915.1"
  sha256 "416b9606c28553498e1e69dc60691ee8aee0a2616633d3f3db0451f275229b5c"

  url "https://github.com/oiekjr/fwd-deck/releases/download/v#{version}/fwd-deck-app_#{version}_universal.dmg"
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
