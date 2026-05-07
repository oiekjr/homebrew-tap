cask "fwd-deck-app" do
  version "0.3.13"
  sha256 "4fa79ad45b7e82723fa6299950d308c2314eff46b91a41450bedd77fb8c775e0"

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
