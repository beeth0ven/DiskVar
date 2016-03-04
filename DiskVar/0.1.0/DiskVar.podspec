Pod::Spec.new do |s|

s.name = "DiskVar"
s.summary = "Provide a convenience method to access NSUserDefaults"
s.author = { "Luo Jie" => "beeth0vendev@gmail.com" }
s.homepage = "https://github.com/beeth0ven/DiskVar"
s.license = { :type => "MIT", :file => "LICENSE" }

s.platform = :ios
s.ios.deployment_target = '8.0'
s.version = "0.1.0"

s.requires_arc = true
s.source = { :git => "https://github.com/beeth0ven/DiskVar.git", :tag => "#{s.version}"}
s.source_files = "DiskVar/**/*.{swift}"

end