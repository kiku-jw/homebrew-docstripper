# Homebrew formula for DocStripper
# Installation: brew tap kiku-jw/docstripper && brew install docstripper

class Docstripper < Formula
  desc "AI-powered batch document cleaner - Remove noise from text documents automatically"
  homepage "https://github.com/kiku-jw/DocStripper"
  url "https://github.com/kiku-jw/DocStripper/archive/refs/tags/v2.1.0.tar.gz"
  version "2.1.0"
  sha256 "4b0a688c530ca596b9dba7d6494adf06011e287d20fe9e16d4b06876d8fdb273"
  license "MIT"

  depends_on "python@3.9"

  def install
    bin.install "tool.py" => "docstripper"
    chmod 0755, bin/"docstripper"
  end

  test do
    system "#{bin}/docstripper", "--help"
  end
end
