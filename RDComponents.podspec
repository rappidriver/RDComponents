#
# Be sure to run `pod lib lint RDComponents.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RDComponents'
  s.version          = '0.0.3'
  s.summary          = 'Suite de Componentes - RDComponents.'
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/rappidriver/RDComponents.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Regis Araujo' => 'regis@r3tecnologia.net' }
  s.source           = { :git => 'https://github.com/rappidriver/RDComponents.git', :tag => s.version.to_s }
  s.ios.deployment_target = '12'
  s.swift_version = '5.0'

  # s.subspec 'Release' do |release|
    # release.vendored_frameworks = "RDComponents.xcframework"
  # end

  s.subspec 'Debug' do |debug|
      debug.source_files = 'Sources/RDComponents/**/*.{swift}'
      debug.resources    = 'Sources/RDComponents/**/*.{xib,storyboard,xcassets,strings,json,html}'
  end

end
