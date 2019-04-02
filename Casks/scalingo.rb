cask 'scalingo' do
  version '1.10.1'
  sha256 'f950ca68af0845e1878b1d00b1a5088434fd5e48842f50acbabe37149dbca17c'

  # github.com/Scalingo was verified as official when first introduced to the cask
  url "https://github.com/Scalingo/cli/releases/download/#{version}/scalingo_#{version}_darwin_amd64.zip"
  name 'scalingo'
  homepage 'http://cli.scalingo.com/'

  binary "scalingo_#{version}_darwin_amd64/scalingo", target: 'scalingo'
end
