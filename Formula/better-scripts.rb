class BetterplaceScripts < Formula
  desc "Shell scripts for betterplace.org"
  homepage "https://github.com/betterplace/better-scripts"
  url "https://github.com/betterplace/better-scripts.git",
    :tag => 'v0.0.3',
    :revision => '8cf0fdda81f1d75de9573f8c1ce915b4a0bc6f2d'

  # depends_on "cmake" => :build

  def install
    bin.install Dir['scripts/*']
  end

  test do
    system "false"
  end
end
