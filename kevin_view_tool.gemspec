
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "kevin_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "kevin_view_tool"
  spec.version       = KevinViewTool::VERSION
  spec.authors       = ["Rails app"]
  spec.email         = ["kevinqiyf@hotmail.com"]

  spec.summary       = %q{Various view specific method for applications i use.}
  spec.description   = %q{Provides generated HTML data for Rails applications}
  spec.homepage      = "https://my-app-kevinqi.c9users.io" 
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
