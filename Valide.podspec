#
# Be sure to run `pod lib lint Valide.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Valide'
  s.version          = '0.1.11'
  s.summary          = 'Something that helps you with the validity of the content of UITextFields by adding rules to them.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
I needed a simple way of validating user input, so one afternoon I wrote this. Small, simple and to the point. It helps you with the validity of the content of UITextFields by adding rules to them. These rules can also be defined by you. Most common rules are shipped along the validation classes.
                       DESC

  s.homepage         = 'https://github.com/funky-monkey/Valide'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Sidney de Koning' => 'sidney.dekoning@gmail.com' }
  s.source           = { :git => 'https://github.com/funky-monkey/Valide.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/sidneydekoning'

  s.ios.deployment_target = '9.0'

  s.source_files = 'Valide/Classes/**/*'

end
