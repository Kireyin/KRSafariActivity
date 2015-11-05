Pod::Spec.new do |s|

  s.name                = "KRSafariActivity"
  s.version             = "1.0.0"
  s.summary             = "A UIActivity subclass that opens URLs in Safari - in Swift"

  s.description         = <<-DESC
                          A UIActivity subclass that opens URLs in Safari - in Swift
                          https://github.com/Kireyin/KRSafariActivity
                          DESC

  s.homepage            = "https://github.com/Kireyin/KRSafariActivity"
  
  s.license             = { 
                            :type => "MIT", 
                            :file => "LICENSE" 
                          }

  s.author              = { 
                            "Alexandre Brispot" => "abrispot@gmail.com" 
                          }

  s.platform            = :ios
  s.ios.deployment_target = '8.0'

  s.source              = { 
                            :git => "https://github.com/Kireyin/KRSafariActivity.git", 
                            :tag => s.version.to_s 
                          }

  s.source_files        = "KRSafariActivity/**/*.{swift}"
  # s.public_header_files = "KRSafariActivity/**/*.{h}"
  s.resources           = "KRSafariActivity/KRSafariActivity/Ressources/*"
  s.frameworks          = "UIKit"
end
