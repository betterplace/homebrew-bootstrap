cask 'scalingo' do
  version '1.19.3'
  sha256 '939fccc9bbdd265c0e338d705e59a12c8c8643f5406fe05d866c3755a8e60b4f'

  # github.com/Scalingo was verified as official when first introduced to the cask
  url "https://github.com/Scalingo/cli/releases/download/#{version}/scalingo_#{version}_darwin_amd64.zip"
  name 'scalingo'
  homepage 'http://cli.scalingo.com/'

  binary "scalingo_#{version}_darwin_amd64/scalingo", target: 'scalingo'
end
