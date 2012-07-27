# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniture_rspec_test/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["rdecunrex"]
  gem.email         = ["rdecurnex@despegar.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "omniture_rspec_test"
  gem.require_paths = ["lib"]
  gem.version       = OmnitureRspecTest::VERSION

  gem.add_dependency 'rspec'
  gem.add_dependency 'watir-webdriver'
end
