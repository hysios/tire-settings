# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tire-settings/version'

Gem::Specification.new do |spec|
  spec.name          = "tire-settings"
  spec.version       = Tire::Settings::VERSION
  spec.authors       = ["hysios hu"]
  spec.email         = ["hysios@gmail.com"]
  spec.description   = %q{add tire setup settings features}
  spec.summary       = %q{add tire setup settings features}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_dependency "tire"
end
