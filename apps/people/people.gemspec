$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "people/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "people"
  s.version     = People::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of People."
  s.description = "TODO: Description of People."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "devise"


  s.add_dependency "rails", "~> 4.1.0"
  s.add_dependency 'slim'
  s.add_dependency 'neat'
  s.add_dependency 'bourbon'
  s.add_dependency 'bitters'
  s.add_dependency 'refills'
  s.add_dependency 'jquery-rails'


  s.add_development_dependency "sqlite3"
end