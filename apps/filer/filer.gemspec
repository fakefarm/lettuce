$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "filer/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "filer"
  s.version     = Filer::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Filer."
  s.description = "TODO: Description of Filer."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.1.0"
  s.add_dependency 'carrierwave'

  s.add_dependency 'slim'
  s.add_dependency 'bourbon'
  s.add_dependency 'bitters'
  s.add_dependency 'neat'
  s.add_dependency 'refills'

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "pry-rails"
end
