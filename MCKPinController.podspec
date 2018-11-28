#
#  Be sure to run `pod spec lint MCKPinController.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  
  
  # s.ios.deployment_target = '9.0'
  # s.requires_arc = true

  # ―――----------------------------------――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  s.name         = "MCKPinController"
  s.version      = "1.0.4"
  s.summary      = "A controller for authenticating a pin number."
  s.description  = "A fully configurable controller for validating a pin number."

  s.homepage     = "https://himalmadhushan.weebly.com/"
  # s.screenshots  = "https://github.com/MacKaSL/MCKPinController/blob/master/snapshots/MCKPinController-iPadAir2-1.png", "https://github.com/MacKaSL/MCKPinController/blob/master/snapshots/MCKPinController-iPhone-1.PNG", "https://github.com/MacKaSL/MCKPinController/blob/master/snapshots/MCKPinController-iPhone-3.PNG"

  s.license            = "MIT"
  s.author             = { "Himal Madhushan" => "mackacodes@gmail.com" }
  s.social_media_url   = "https://twitter.com/himalmadhushan"

  # ―――----------------------------------――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  s.platform     = :ios, "9.0"

  # s.ios.vendored_frameworks = 'MCKPinController.framework'

  s.source       = { :git => 'https://github.com/MacKaSL/MCKPinController.git', :tag => "1.0.4.4" }
  # s.source       = { :path => '.' }
  # s.source       = { :http => 'https://github.com/MacKaSL/MCKPinController/blob/master/MCKPinController.zip?raw=true' }

  # s.source_files  = "MCKPinController"
   s.ios.source_files   = 'MCKPinController/*.swift', 'MCKPinController/Storyboard.storyboard', 'MCKPinController/Assets.xcassets'
  # s.source_files   = 'MCKPinController/*.swift', 'MCKPinController/Storyboard.storyboard'
  # s.source_files = 'MCKPinController/*.{h,swift,storyboard,xcassets}'
  # s.ios.source_files = 'MCKPinController/*.h','MCKPinController/*.swift','MCKPinController/*.storyboard','MCKPinController/*.xcassets'
  # s.source_files = 'MCKPinController/**/*.framework'

  s.swift_version = '4.0'
end