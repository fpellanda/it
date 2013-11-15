# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'it/version'

Gem::Specification.new do |gem|
  gem.name          = "it"
  gem.version       = It::VERSION
  gem.authors       = ["Flavio Pellanda"]
  gem.email         = ["flavio@apache.org"]
  gem.description   = %q{Simple ruby script for mount and chroot into stacked directories}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'guard-rspec'
end
