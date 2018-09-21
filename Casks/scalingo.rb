cask 'scalingo' do
  version '1.9.0'
  sha256 '56724f083260839c76c0d24f6275221fa6e00d6cec1f597de2d1823b382386b6'

  # github.com/Scalingo was verified as official when first introduced to the cask
  url "https://github.com/Scalingo/cli/releases/download/#{version}/scalingo_#{version}_darwin_amd64.zip"
  name 'scalingo'
  homepage 'http://cli.scalingo.com/'

  binary "scalingo_#{version}_darwin_amd64/scalingo"
end
