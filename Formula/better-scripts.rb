class BetterScripts < Formula
  desc "Shell scripts for betterplace.org"
  homepage "https://github.com/betterplace/better-scripts"
  url "https://github.com/betterplace/better-scripts.git", tag: 'v0.0.5'

  # depends_on "cmake" => :build

  def install
    bin.install Dir['scripts/*']
  end

  test do
    system "false"
  end
end
