#
# Be sure to run `pod lib lint SKTimer.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "SKTimer"
  s.version          = "0.2.1"
  s.summary          = "Easy to use timer for SpriteKit games."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = "Easy to set up and use timer for SpriteKit games. A few extra options to set a time limit and get notified when it is reached as well as the ability to speed up and slow down the timer."

  s.homepage         = "https://github.com/KyleGoslan/SKTimer"
  # s.screenshots    = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "KyleGoslan" => "kylegoslan@me.com" }
  s.source           = { :git => "https://github.com/KyleGoslan/SKTimer.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/KyleGoslan'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'SKTimer'

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
