Pod::Spec.new do |s|

  # ―――----------------------------------――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  s.name         = "MCKPinController"
  s.version      = "1.0.5"
  s.summary      = "A controller for authenticating a pin number."
  s.description  = "A fully configurable controller for validating a pin number."

  s.homepage     = "https://himalmadhushan.weebly.com/"
  s.license            = { :type => 'MIT', :file => 'LICENSE' }
  s.author             = { "Himal Madhushan" => "mackacodes@gmail.com" }
  s.social_media_url   = "https://twitter.com/himalmadhushan"

  # ―――----------------------------------――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  s.platform     = :ios, "9.0"

  s.ios.vendored_frameworks = 'MCKPinController.framework'

  # s.source       = { :git => 'https://github.com/MacKaSL/MCKPinController.git', :tag => "1.0.4.20" }
  
  s.source       = { :http => 'https://github.com/MacKaSL/MCKPinController/blob/master/MCKPinController.zip?raw=true' }

  s.swift_version = '4.0'
end