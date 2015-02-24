#
# Be sure to run `pod lib lint EasyViewLayout.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "EasyViewLayout"
  s.version          = "0.1.0"
  s.summary          = "EasyViewLayout is an easy to use Auto Layout tool designed to help you setup your constraints with easy."
  s.description      = <<-DESC
                       This is a small project I wanted to start with friends. For those who choose not to use IB and would rather
                        use code to layout view, the idea of this tool is to make constraints less painful and more readable.
                        Feel free to add/remove as you see fit but use it as your own risk.

                       * Markdown format.
                       * Don't worry about the indent, we strip it!
                       DESC
  s.homepage         = "https://github.com/marcioarantes/EasyViewLayout"
  s.screenshots     = "Example", "http://cl.ly/image/1g1n0N3h3s2o"
  s.license          = 'MIT'
  s.author           = { "Marcio Arantes" => "marcioarantes220@gmail.com" }
  s.source           = { :git => "https://github.com/marcioarantes/EasyViewLayout.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '8.1'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'

  s.public_header_files = 'Pod/Classes'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
