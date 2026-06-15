class FwdDeck < Formula
  desc "Manage SSH local port forwarding profiles"
  homepage "https://github.com/oiekjr/fwd-deck"
  version "26.616.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/oiekjr/fwd-deck/releases/download/v#{version}/fwd-deck_#{version}_aarch64-apple-darwin.tar.gz"
      sha256 "b7773d99fe02ea71a10d2f0573e4b767a91ecccd1ca20e151d6e77184025b1ae"
    end

    on_intel do
      url "https://github.com/oiekjr/fwd-deck/releases/download/v#{version}/fwd-deck_#{version}_x86_64-apple-darwin.tar.gz"
      sha256 "e5627b42a138288b9ce7f2301b8b7dbc55a2905cd9f185cbc90afa33497cb329"
    end
  end

  def install
    bin.install "fwd-deck"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/fwd-deck --help")
  end
end
