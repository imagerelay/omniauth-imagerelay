# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-imagerelay/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Buffy Miller"]
  gem.email         = ["buffy@imagerelay.com"]
  gem.description   = %q{OmniAuth strategy for Image Relay.}
  gem.summary       = %q{OmniAuth strategy for Image Relay.}
  gem.homepage      = "https://github.com/imagerelay/omniauth-imagerelay"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "omniauth-imagerelay"
  gem.license       = "MIT"
  gem.require_paths = ["lib"]
  gem.version       = OmniAuth::ImageRelay::VERSION

  gem.add_dependency 'omniauth', '~> 1.0'
  gem.add_dependency 'omniauth-oauth2', '~> 1.0'
  gem.add_development_dependency 'rspec', '~> 2.7'
  gem.add_development_dependency 'rack-test'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'webmock'
end

