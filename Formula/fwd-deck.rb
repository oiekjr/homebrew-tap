class FwdDeck < Formula
  desc "Manage SSH local port forwarding profiles"
  homepage "https://github.com/oiekjr/fwd-deck"
  version "26.915.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/oiekjr/fwd-deck/releases/download/v#{version}/fwd-deck_#{version}_aarch64-apple-darwin.tar.gz"
      sha256 "9adeb5b54c4d9f61679487d6b4fc49707a97d5a57b9517aa23a836c3e08a4273"
    end

    on_intel do
      url "https://github.com/oiekjr/fwd-deck/releases/download/v#{version}/fwd-deck_#{version}_x86_64-apple-darwin.tar.gz"
      sha256 "1b487a3ae2c6260569135bd537acef89ae1e935554badd871cbcfc1ea426e7a6"
    end
  end

  def install
    bin.install "fwd-deck"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/fwd-deck --help")
  end
end
