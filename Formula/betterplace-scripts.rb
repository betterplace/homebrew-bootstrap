class BetterplaceScripts < Formula
  desc "Shell scripts for betterplace.org"
  homepage "https://github.com/betterplace/better-scripts"
  url "https://github.com/betterplace/better-scripts.git",
    :tag => 'v0.0.2',
    :revision => '536a4957921b4187ea3636639b852bdccbab7f5b'

  # depends_on "cmake" => :build

  def install
    bin.install Dir['scripts/*']
  end

  test do
    system "false"
  end
end
