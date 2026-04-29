class FwdDeck < Formula
  desc "Manage SSH local port forwarding profiles"
  homepage "https://github.com/oiekjr/fwd-deck"
  version "0.1.0"
  url "https://github.com/oiekjr/fwd-deck/archive/refs/tags/v#{version}.tar.gz"
  sha256 "84416174d4f4c1bc6726f5bbdb0c0551a5a8fd8f2829d32e5de9092936d508a5"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--path", "crates/fwd-deck-cli", "--root", prefix
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/fwd-deck --help")
  end
end
