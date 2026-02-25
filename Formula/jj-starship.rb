class JjStarship < Formula
  desc "Get the latest release of jj-starship from GitHub Releases"
  homepage "https://github.com/dmmulroy/jj-starship"
  version "latest"

  on_macos do
    on_arm do
      url "https://github.com/dmmulroy/jj-starship/releases/latest/download/jj-starship-aarch64-apple-darwin.tar.gz"
    end
    on_intel do
      url "https://github.com/dmmulroy/jj-starship/releases/latest/download/jj-starship-x86_64-apple-darwin.tar.gz"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dmmulroy/jj-starship/releases/latest/download/jj-starship-aarch64-unknown-linux-musl.tar.gz"
    end
    on_intel do
      url "https://github.com/dmmulroy/jj-starship/releases/latest/download/jj-starship-x86_64-unknown-linux-musl.tar.gz"
    end
  end

  def install
    bin.install "jj-starship"
  end

  test do
    system "#{bin}/jj-starship", "--version"
  end
end
