$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "holmes/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "holmes"
  s.version     = Holmes::VERSION
  s.authors     = ["Pedro Gryzinsky"]
  s.email       = ["pedro.gryzinsky@zrp.com.br"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Holmes."
  s.description = "TODO: Description of Holmes."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", ">= 5.0.0.beta3", "< 5.1"

  s.add_development_dependency "sqlite3"
end
