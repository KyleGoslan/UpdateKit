#
# Be sure to run `pod lib lint SKTimer.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "UpdateKit"
  s.version          = "0.1.0"
  s.summary          = "Perform actions on first launch or app updates easiliy."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = "UpdateKit makes it easy to perform an action the first time your app lauches or when an update is installed."

  s.homepage         = "https://github.com/KyleGoslan/UpdateKit"
  # s.screenshots    = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "KyleGoslan" => "kylegoslan@me.com" }
  s.source           = { :git => "https://github.com/KyleGoslan/UpdateKit.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/KyleGoslan'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'UpdateKit'

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
