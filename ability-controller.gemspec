# -*- encoding: utf-8 -*-
require File.expand_path('../lib/ability-controller/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Siebert Lubbe"]
  gem.email         = ["siebert.lubbe@googlemail.com"]
  gem.description   = %q{Exposes cancan current_ability as json through a rails engine controller}
  gem.summary       = %q{Exposes cancan current_ability as json through a rails engine controller}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "ability-controller"
  gem.require_paths = ["lib"]
  gem.version       = Ability::Controller::VERSION
end
