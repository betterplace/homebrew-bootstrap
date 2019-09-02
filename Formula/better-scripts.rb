class BetterScripts < Formula
  desc "Shell scripts for betterplace.org"
  homepage "https://github.com/betterplace/better-scripts"
  url "https://github.com/betterplace/better-scripts.git",
    :tag => 'v0.0.4',
    :revision => 'ddf288a19a0eb54efe59ec2a51e3ba1f4285662a'

  # depends_on "cmake" => :build

  def install
    bin.install Dir['scripts/*']
  end

  test do
    system "false"
  end
end
