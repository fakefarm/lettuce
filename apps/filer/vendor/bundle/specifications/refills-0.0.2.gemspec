# -*- encoding: utf-8 -*-
# stub: refills 0.0.2 ruby lib

Gem::Specification.new do |s|
  s.name = "refills"
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Jo\u{eb}l Quenneville", "Magnus Gyllensward", "Christian Reuter", "Lisa Sy", "Paul Smith"]
  s.date = "2014-05-09"
  s.description = "Refills"
  s.email = ["magnus@thoughtbot.com"]
  s.homepage = "http://thoughtbot.github.io/refills/"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.0"
  s.summary = "Refills"

  s.installed_by_version = "2.2.0" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.3"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.3"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.3"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
