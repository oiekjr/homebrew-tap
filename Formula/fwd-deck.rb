class FwdDeck < Formula
  desc "Manage SSH local port forwarding profiles"
  homepage "https://github.com/oiekjr/fwd-deck"
  version "0.3.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/oiekjr/fwd-deck/releases/download/v#{version}/fwd-deck_#{version}_aarch64-apple-darwin.tar.gz"
      sha256 "0361f2687d1dd8deea90bc68a6c9a9b398b293550635f160c22fdf504c83adf3"
    end

    on_intel do
      url "https://github.com/oiekjr/fwd-deck/releases/download/v#{version}/fwd-deck_#{version}_x86_64-apple-darwin.tar.gz"
      sha256 "a37a5c84548cc47df147e202e64c0fcfa2cc52683bac808d7a5cbe0fcc63e229"
    end
  end

  def install
    bin.install "fwd-deck"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/fwd-deck --help")
  end
end
