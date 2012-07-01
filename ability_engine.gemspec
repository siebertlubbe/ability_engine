# -*- encoding: utf-8 -*-
require File.expand_path('../lib/ability_engine/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Siebert Lubbe"]
  gem.email         = ["siebert.lubbe@googlemail.com"]
  gem.description   = %q{Exposes CanCan's current_ability object as json through a rails engine controller}
  gem.summary       = %q{Exposes CanCan's current_ability object as json through a rails engine controller}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "ability_engine"
  gem.require_paths = ["lib"]
  gem.version       = AbilityEngine::VERSION

  gem.add_development_dependency "rspec"
  gem.add_development_dependency "rspec-rails"
  gem.add_dependency "railties", ">= 3.0.0"
end

