# -*- encoding: utf-8 -*-
# stub: puppet-syntax 2.4.1 ruby lib

Gem::Specification.new do |s|
  s.name = "puppet-syntax"
  s.version = "2.4.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Vox Pupuli"]
  s.date = "2017-06-29"
  s.description = "Syntax checks for Puppet manifests and templates"
  s.email = ["voxpupuli@groups.io"]
  s.homepage = "https://github.com/voxpupuli/puppet-syntax"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.5"
  s.summary = "Syntax checks for Puppet manifests, templates, and Hiera YAML"

  s.installed_by_version = "2.2.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<pry>, [">= 0"])
      s.add_development_dependency(%q<rb-readline>, [">= 0"])
      s.add_development_dependency(%q<gem_publisher>, ["~> 1.3"])
    else
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<pry>, [">= 0"])
      s.add_dependency(%q<rb-readline>, [">= 0"])
      s.add_dependency(%q<gem_publisher>, ["~> 1.3"])
    end
  else
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<pry>, [">= 0"])
    s.add_dependency(%q<rb-readline>, [">= 0"])
    s.add_dependency(%q<gem_publisher>, ["~> 1.3"])
  end
end
