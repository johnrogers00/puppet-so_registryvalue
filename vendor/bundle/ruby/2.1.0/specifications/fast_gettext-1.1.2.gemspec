# -*- encoding: utf-8 -*-
# stub: fast_gettext 1.1.2 ruby lib

Gem::Specification.new do |s|
  s.name = "fast_gettext"
  s.version = "1.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Michael Grosser"]
  s.date = "2018-01-18"
  s.email = "michael@grosser.it"
  s.homepage = "http://github.com/grosser/fast_gettext"
  s.licenses = ["MIT", "Ruby"]
  s.rubygems_version = "2.2.5"
  s.summary = "A simple, fast, memory-efficient and threadsafe implementation of GetText"

  s.installed_by_version = "2.2.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<activerecord>, [">= 0"])
      s.add_development_dependency(%q<i18n>, [">= 0"])
      s.add_development_dependency(%q<bump>, [">= 0"])
      s.add_development_dependency(%q<wwtd>, [">= 0"])
    else
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<activerecord>, [">= 0"])
      s.add_dependency(%q<i18n>, [">= 0"])
      s.add_dependency(%q<bump>, [">= 0"])
      s.add_dependency(%q<wwtd>, [">= 0"])
    end
  else
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<activerecord>, [">= 0"])
    s.add_dependency(%q<i18n>, [">= 0"])
    s.add_dependency(%q<bump>, [">= 0"])
    s.add_dependency(%q<wwtd>, [">= 0"])
  end
end
