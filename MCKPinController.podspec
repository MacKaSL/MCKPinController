#
#  Be sure to run `pod spec lint MCKPinController.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "MCKPinController"
  s.version      = "1.0.3"
  s.summary      = "A controller for authenticating a pin number."

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  
  s.description  = "A fully configurable controller for validating a pin number."

  s.homepage     = "https://himalmadhushan.weebly.com/"
  s.screenshots  = "https://github.com/MacKaSL/MCKPinController/blob/master/snapshots/MCKPinController-iPadAir2-1.png", "https://github.com/MacKaSL/MCKPinController/blob/master/snapshots/MCKPinController-iPhone-1.PNG", "https://github.com/MacKaSL/MCKPinController/blob/master/snapshots/MCKPinController-iPhone-3.PNG"

  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }

  s.author             = { "Himal Madhushan" => "mackacodes@gmail.com" }
  s.social_media_url   = "https://twitter.com/himalmadhushan"

  s.platform     = :ios, "9.0"
  s.swift_version = '4.0'
  s.ios.deployment_target = '9.0'

  # s.source       = { :git => "https://github.com/MacKaSL/MCKPinController.git", :tag => "1.0.0" }
  s.source       = { :http => 'https://github.com/MacKaSL/MCKPinController/blob/master/MCKPinController.zip?raw=true' }

  s.source_files  = "MCKPinController"
  s.ios.vendored_frameworks = 'MCKPinController.framework'
  s.requires_arc = true
  
  # s.public_header_files = "Classes/**/*.h"

  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  # 

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

end
