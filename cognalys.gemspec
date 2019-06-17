  # coding: utf-8
$:.unshift(File.join(File.dirname(__FILE__), 'lib'))

require 'cognalys/version'

Gem::Specification.new do |spec|
  spec.name          = "cognalys"
  spec.version       = Cognalys::VERSION
  spec.authors       = ["Ronak Jain"]
  spec.email         = ["ronakjain90@gmail.com"]
  spec.summary       = %q{Ruby Gem for Cognalys}
  spec.description   = %q{Ruby Gem for Cognalys}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  spec.test_files    = `git ls-files -- test/*`.split("\n")
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency('rest-client', '>= 1.6', '< 3.0')
end
