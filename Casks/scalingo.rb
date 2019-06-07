cask 'scalingo' do
  version '1.11.0'
  sha256 '25a9207208aafab138e68a7f508f3d46b60682b7801e65fbb8f712e2cfd224dc'

  # github.com/Scalingo was verified as official when first introduced to the cask
  url "https://github.com/Scalingo/cli/releases/download/#{version}/scalingo_#{version}_darwin_amd64.zip"
  name 'scalingo'
  homepage 'http://cli.scalingo.com/'

  binary "scalingo_#{version}_darwin_amd64/scalingo", target: 'scalingo'
end
