Pod::Spec.new do |s|
  s.name             = "DDNavText"
  s.version          = "1.1.1"
  s.summary          = "Easily show additional text in your UINavigationBar title."
  s.homepage         = "http://github.com/Dids/DDNavText"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "Pauli 'Dids' Jokela" => "pauli.jokela@didstopia.com" }

  s.source           = { :git => "https://github.com/Dids/DDNavText.git", :tag => "1.1.1" }
  s.source_files     = 'DDNavText/*.{h,m}'

  s.platform         = :ios, '8.4'
  s.requires_arc     = true
end
