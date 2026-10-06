class FwdDeck < Formula
  desc "Manage SSH local port forwarding profiles"
  homepage "https://github.com/oiekjr/fwd-deck"
  if Hardware::CPU.arm?
    url "https://github.com/oiekjr/fwd-deck/releases/download/v26.1003.1/fwd-deck_26.1003.1_aarch64-apple-darwin.tar.gz"
    sha256 "af555d6e445f546ae16f09232bd90c1878bb16d3a3179aaa52f77ab3c023790c"
  else
    url "https://github.com/oiekjr/fwd-deck/releases/download/v26.1003.1/fwd-deck_26.1003.1_x86_64-apple-darwin.tar.gz"
    sha256 "ecc9e7c54cd58aa785c1919e9119cdde51e4eae314d1e1275c4e6475574364b0"
  end
  license "MIT"

  depends_on :macos

  def install
    bin.install "fwd-deck"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/fwd-deck --help")
  end
end
