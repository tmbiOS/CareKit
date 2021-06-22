Pod::Spec.new do |s|
  s.name         = "CareKit"
  s.version      = "2.0.1"
  s.summary      = "CareKit"
  s.description  = <<-EOS
  CareKit™ is an open source software framework for creating apps that help people better understand and manage their health. The framework provides modules that can be used out of the box, or extended and customized for more targeted use cases.
  EOS
  s.homepage     = "https://www.researchandcare.org/"
  s.license      = { :type => "MIT", :file => "License" }
  s.author             = { "Apple" => "carekit@apple.com" }
  s.source       = { :git => "https://github.com/tmbiOS/CareKit.git", :tag => s.version }
  
  s.ios.deployment_target = '13.0'
  s.watchos.deployment_target = '6.0'
  
  s.swift_version = '5.3'
  s.cocoapods_version = '>= 1.4.0'
  s.requires_arc = true

  s.source_files  = "CareKit/CareKit/**/*.{swift}"
  s.resources = "CareKit/CareKit/iOS/Localization/*.lproj"
  s.dependency 'CareKitUI'
  s.dependency 'CareKitStore'
  s.exclude_files = ["CareKit/CareKit/Info.plist"]
end
