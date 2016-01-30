Pod::Spec.new do |s|
  s.name          = "IntrepidSwiftWisdom"
  s.version       = "0.0.15"
  s.summary       = "A collection of extensions to the Swift Standard Library"
  s.description   = <<-DESC
                    A collection of extensions to the Swift Standard Library, written by the developers of Intrepid Pursuits.
                    DESC
  s.homepage      = "https://github.com/IntrepidPursuits/swift-wisdom"
  s.license       = "MIT"
  s.authors       = { "Logan Wright" => "logan@intrepid.io" }
  s.source        = { :git => "https://github.com/IntrepidPursuits/swift-wisdom.git", :tag => "#{s.version}" }
  s.exclude_files = "tests/**/*"
  s.platform      = :ios
  s.ios.deployment_target = "8.0"
  s.default_subspec = "Core"

  s.subspec "Core" do |cs|
    cs.source_files = "SwiftWisdom/Core/**/**/*.swift"
    cs.dependency 'IP-UIKit-Wisdom', '0.0.9'
  end
end
