Pod::Spec.new do |spec|
  spec.name         = "ZoomSDK"
  spec.version      = "5.13.5.6488"
  spec.summary      = "Original framework for Zoom.us iOS SDK with x86_64 for simulator"
  spec.homepage     = "https://github.com/etacla/sad-iosbridge"
  spec.license      = "MIT"
  spec.author             = { "Iago Cavalcante" => "iagoangelimc@gmail.com" }

  spec.swift_version              = "5.0"
  spec.ios.deployment_target      = "10.0"

  spec.source       = { :git => "https://github.com/etacla/sad-iosbridge", :tag => "v#{spec.version}" }

  spec.default_subspec = 'Core'
  spec.requires_arc = true

  spec.default_subspec = 'Core'
  spec.requires_arc = true

  spec.subspec 'Core' do |subspec|
    subspec.ios.source_files           = "MobileRTC.framework/Headers/**/*.{h,m}"
    subspec.ios.public_header_files    = "MobileRTC.framework/Headers/**/*.{h,m}"
    subspec.ios.vendored_frameworks    = "MobileRTC.framework"

    subspec.ios.resource = "MobileRTCResources.bundle"
  end
end