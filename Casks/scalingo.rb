cask 'scalingo' do
  version '1.18.1'
  sha256 '372086e6b1f3c984892c552925712492caeaaae0d736ffbaa4fe5f273f8443b8'

  # github.com/Scalingo was verified as official when first introduced to the cask
  url "https://github.com/Scalingo/cli/releases/download/#{version}/scalingo_#{version}_darwin_amd64.zip"
  name 'scalingo'
  homepage 'http://cli.scalingo.com/'

  binary "scalingo_#{version}_darwin_amd64/scalingo", target: 'scalingo'
end
