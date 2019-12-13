Pod::Spec.new do |s|
  s.name = 'MWPhotoBrowser'
  s.version = '2.1.9'
  s.author = { 'yangyongzheng' => 'youngyongzheng@qq.com' }
  s.license = 'MIT'
  s.homepage = 'https://github.com/yangyongzheng/MWPhotoBrowser'
  s.source = { :git => 'https://github.com/yangyongzheng/MWPhotoBrowser.git', :tag => "#{s.version}" }
  s.summary = '基于MWPhotoBrowser的修正版'

  s.requires_arc = true
  s.platform = :ios, '8.0'
  s.source_files  = 'PodSourceFiles/Classes/*'
  s.resource = 'PodSourceFiles/Assets/MWPhotoBrowser.bundle'
  s.public_header_files = 'PodSourceFiles/Classes/*.h'

  s.frameworks = 'ImageIO', 'QuartzCore', 'AssetsLibrary', 'MediaPlayer'
  s.weak_frameworks = 'Photos'

  s.dependency 'MBProgressHUD', '~> 1.1'
  s.dependency 'DACircularProgress', '~> 2.3'
  s.dependency 'SDWebImage', '~> 5.3.3'

end
