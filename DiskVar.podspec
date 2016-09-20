Pod::Spec.new do |s|

# 1
s.platform = :ios
s.ios.deployment_target = '8.0'
s.name = "DiskVar"
s.summary = "Provide a convenience method to access NSUserDefaults"
s.requires_arc = true

# 2
s.version = "0.2.1"

# 3
s.license = { :type => "MIT", :file => "LICENSE" }

# 4 - Replace with your name and e-mail address
s.author = { "Luo Jie" => "beeth0vendev@gmail.com" }



# 5 - Replace this URL with your own Github page's URL (from the address bar)
s.homepage = "https://github.com/beeth0ven/DiskVar"



# 6 - Replace this URL with your own Git URL from "Quick Setup"
s.source = { :git => "https://github.com/beeth0ven/DiskVar.git", :tag => "#{s.version}"}

# 7

# 8
s.source_files = "DiskVar/**/*.{swift}"

# 9
end
