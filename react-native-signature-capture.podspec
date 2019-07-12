require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = 'react-native-fingerprint-scanner'
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']

  s.authors      = package['author']
  s.platform     = :ios, "9.0"
  s.homepage     = package['repository']

  s.source       = { :git => "https://github.com/evandavid//react-native-signature-capture.git", :tag => "v#{s.version}" }
  s.source_files = "ios/**/*.{h,m}"

  s.dependency 'React'
end
