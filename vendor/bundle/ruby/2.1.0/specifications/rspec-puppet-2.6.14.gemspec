# -*- encoding: utf-8 -*-
# stub: rspec-puppet 2.6.14 ruby lib

Gem::Specification.new do |s|
  s.name = "rspec-puppet"
  s.version = "2.6.14"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Tim Sharpe"]
  s.date = "2018-07-06"
  s.description = "RSpec tests for your Puppet manifests"
  s.email = "tim@sharpe.id.au"
  s.executables = ["rspec-puppet-init"]
  s.files = ["bin/rspec-puppet-init"]
  s.homepage = "https://github.com/rodjek/rspec-puppet/"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.5"
  s.summary = "RSpec tests for your Puppet manifests"

  s.installed_by_version = "2.2.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rspec>, [">= 0"])
    else
      s.add_dependency(%q<rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 0"])
  end
end
