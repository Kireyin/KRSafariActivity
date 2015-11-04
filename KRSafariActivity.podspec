Pod::Spec.new do |s|

  s.name                = "KRSafariActivity"
  s.version             = "0.0.1"
  s.summary             = "A UIActivity subclass that opens URLs in Safari - in Swift"

  s.description         = <<-DESC
                          A UIActivity subclass that opens URLs in Safari - in Swift
                          https://github.com/Kireyin/KRSafariActivity
                          DESC

  s.homepage            = "https://github.com/Kireyin/KRSafariActivity"
  s.license             = { :type => "MIT", :file => "LICENSE" }
  s.author              = { "Alexandre Brispot" => "abrispot@gmail.com" }
  s.platform            = :ios
  s.ios.deployment_target = '8.0'

  s.source              = { :git => "https://github.com/Kireyin/KRSafariActivity.git", :tag => "0.0.1" }

  s.source_files        = "KRSafariActivity/**/*.{swift}"
  s.public_header_files = "KRSafariActivity/KRSafariActivity/KRSafariActivity.h"
  s.resources           = "KRSafariActivity/**/*.{xcassets, strings, plist}"
  s.frameworks          = "UIKit"
end
