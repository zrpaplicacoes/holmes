$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "holmes/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "holmes"
  s.version     = Holmes::VERSION
  s.authors     = ["Pedro Gryzinsky", "Rafael Costella" ]
  s.email       = ["pedro.gryzinsky@zrp.com.br", "rafael.costella@zrp.com.br" ]
  s.homepage    = "https://github.com/zrpaplicacoes/holmes"
  s.summary     = "Summary of Holmes."
  s.description = "A small ruby Gem to notify about server errors"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", ">= 4.2.0", "< 5.1"

  # RSpec
  s.add_development_dependency "rspec"
  s.add_development_dependency "rspec-rails"

  # byebug
  s.add_development_dependency "byebug"

end
