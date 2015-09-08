# -*- encoding: utf-8 -*-
require File.expand_path('../lib/rails_settings/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "rails_settings" 
  gem.authors       = ["Samoilenko Yuri"]
  gem.email         = ["kinnalru@gmail.com"]
  gem.description   = "A Rails gem for storing app configuration data in your database, with a config file to fall back on."
  gem.summary       = "A Rails gem for storing app configuration data in your database, with a config file to fall back on."
  gem.homepage      = "https://github.com/RnD-Soft/rails_settings"

  gem.version       = RailsSettings::VERSION
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.require_paths = ["lib"]

  gem.required_ruby_version = '>= 1.9.3'

  #gem.add_dependency "railties", ">= 3.2", "< 5.0"

end
