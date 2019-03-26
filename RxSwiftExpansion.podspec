#
# Be sure to run `pod lib lint RxSwiftExpansion.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RxSwiftExpansion'
  s.version          = '0.1.0'
  s.summary          = 'Expansion pack for RxSwift/Cocoa'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  The expansion adds various types of specialized observable/driver for convenience uses.
  and helper functions to help adopter acheiving shorter and more readable rx code.
                       DESC

  s.homepage         = 'https://github.com/myste1tainn/RxSwiftExpansion'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'myste1tainn' => 'a.keereena@gmail.com' }
  s.source           = { :git => 'https://github.com/myste1tainn/RxSwiftExpansion.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'Sources/RxSwiftExpansion/**/*'
  s.swift_version = '4.2'

  s.dependency 'RxSwift', '~> 4.3.1'
  s.dependency 'SwiftExpansion', '~> 0.1.0'

  s.subspec 'RxCocoa' do |ss|
    ss.source_files = 'Sources/RxCocoaExpansion/**/*'
    ss.dependency 'RxCocoa', '~> 4.3.1'
  end
end
