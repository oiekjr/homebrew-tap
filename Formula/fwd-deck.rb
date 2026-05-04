class FwdDeck < Formula
  desc "Manage SSH local port forwarding profiles"
  homepage "https://github.com/oiekjr/fwd-deck"
  version "0.3.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/oiekjr/fwd-deck/releases/download/v#{version}/fwd-deck_#{version}_aarch64-apple-darwin.tar.gz"
      sha256 "1779fd94fae0a9bc8f4d1789aebe72508d14270d9b2028353add116f7cf6c613"
    end

    on_intel do
      url "https://github.com/oiekjr/fwd-deck/releases/download/v#{version}/fwd-deck_#{version}_x86_64-apple-darwin.tar.gz"
      sha256 "642914d81496af660de8174cfdc1ae1ca3113432c24e5c251a14591e63546bee"
    end
  end

  def install
    bin.install "fwd-deck"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/fwd-deck --help")
  end
end
