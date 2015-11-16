Pod::Spec.new do |s|
  s.name             = "KSCategory"
  s.version          = "0.1.0"
  s.summary          = "方便开发的扩展类"
  s.description      = <<-DESC
                        0.1.0:在旧项目开发中使用到的扩展类
                       DESC
  s.homepage         = "https://github.com/spbreak/KSCategory"
  s.license          = 'MIT'
  s.author           = { "spbreak" => "527108411@qq.com" }
  s.source           = { :git => "https://github.com/spbreak/KSCategory.git", :tag => s.version.to_s }
  s.platform     = :ios, '7.0'
  s.requires_arc = true
  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'KSCategory' => ['Pod/Assets/*.png']
  }
  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
