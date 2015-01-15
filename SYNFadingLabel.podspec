#
# Be sure to run `pod lib lint SYNFadingLabel.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "SYNFadingLabel"
  s.version          = "0.1.1"
  s.summary          = "A simple label with UIVisualEffectView vibrancy that automatically fades away."
  s.description      = "SYNFadingLabel is a UIView subclass that you can easily drop in to interface builder. Set the text on the label and it will display, then fade away after a configurable delay. Great for showing pagination like *1 / 1 pages*"
  s.homepage         = "https://github.com/Syntertainment/SYNFadingLabel"
  s.screenshots      = "https://github.com/Syntertainment/SYNFadingLabel/blob/master/Pod/Screenshots/screenshot.png"
  s.license          = 'MIT'
  s.author           = { "Sidhant Gandhi" => "sidhantg@syntertainment.com" }
  s.source           = { :git => "https://github.com/Syntertainment/SYNFadingLabel.git", :tag => s.version.to_s }

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
  s.resources =  ['Pod/Classes/SYNFadingLabel.xib']

  s.frameworks = 'UIKit'
end
