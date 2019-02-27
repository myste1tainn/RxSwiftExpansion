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
  s.summary          = 'A short description of RxSwiftExpansion.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/myste1tainn/RxSwiftExpansion'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'myste1tainn' => 'a.keereena@gmail.com' }
  s.source           = { :git => 'https://github.com/myste1tainn/RxAlgebra.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'RxSwiftExpansion/RxSwift/**/*'

  s.dependency 'RxSwift', '~> 4.2.0'
  s.dependency 'SwiftExpansion', '~> 0.1.0'

  s.subspec 'RxCocoa' do |ss|
    ss.source_files = 'RxSwiftExpansion/RxCocoa/**/*'
    ss.dependency 'RxCocoa', '~> 4.2.0'
  end
end
