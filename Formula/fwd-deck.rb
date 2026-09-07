class FwdDeck < Formula
  desc "Manage SSH local port forwarding profiles"
  homepage "https://github.com/oiekjr/fwd-deck"
  version "26.907.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/oiekjr/fwd-deck/releases/download/v#{version}/fwd-deck_#{version}_aarch64-apple-darwin.tar.gz"
      sha256 "836927c07e22aaebfe0c7514dc891fc4c363666f46514c5e51f1b046c58a26a5"
    end

    on_intel do
      url "https://github.com/oiekjr/fwd-deck/releases/download/v#{version}/fwd-deck_#{version}_x86_64-apple-darwin.tar.gz"
      sha256 "a0a57fa42344ee045a72593ecb271859378b7bccb0d62b7f199891968a4a5543"
    end
  end

  def install
    bin.install "fwd-deck"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/fwd-deck --help")
  end
end
