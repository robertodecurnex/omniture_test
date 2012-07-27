# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniture_test/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["rdecunrex"]
  gem.email         = ["rdecurnex@despegar.com"]
  gem.description   = %q{Rspec Test for Omniture Integrations}
  gem.summary       = %q{Rspec Test for Omniture Integrations}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = []
  gem.name          = "omniture_test"
  gem.require_paths = ["lib"]
  gem.version       = OmnitureTest::VERSION

  gem.add_dependency 'rake'
  gem.add_dependency 'rspec'
  gem.add_dependency 'json'
  gem.add_dependency 'watir-webdriver'
end
