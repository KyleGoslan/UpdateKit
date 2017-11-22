#
# Be sure to run `pod lib lint UpdateKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "UpdateKit"
  s.version          = "0.1.11"
  s.summary          = "Perform actions on first launch or app updates easiliy."
  s.description      = "UpdateKit makes it easy to perform an action the first time your app lauches or when an update is installed."

  s.homepage         = "https://github.com/KyleGoslan/UpdateKit"
  s.license          = 'MIT'
  s.author           = { "KyleGoslan" => "kylegoslan@me.com" }
  s.source           = { :git => "https://github.com/KyleGoslan/UpdateKit.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/KyleGoslan'
  s.platform     = :ios, '11.0'
  s.requires_arc = true
  s.source_files = 'UpdateKit'

end
