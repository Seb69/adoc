# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'adoc/version'

Gem::Specification.new do |spec|
  spec.name          = "adoc"
  spec.version       = Adoc::VERSION
  spec.authors       = ["Sergio Arbeo"]
  spec.email         = ["serabe@gmail.com"]
  spec.description   = %q{A simple documentation library}
  spec.summary       = %q{A simple documentation library}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "pry", '~> 0.9.12'
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-minitest"
end
