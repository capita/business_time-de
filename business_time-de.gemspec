# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "business_time-de/version"

Gem::Specification.new do |s|
  s.name        = "business_time-de"
  s.version     = BusinessTime::De::VERSION
  s.authors     = ["Christoph Olszowka"]
  s.email       = ["christoph at olszowka de"]
  s.homepage    = "https://github.com/capita/business_time-de"
  s.summary     = %q{Pre-configures business_time gem for german holidays from 2000 until 2099}
  s.description = s.summary

  s.rubyforge_project = "business_time-de"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency "date_easter"
  s.add_runtime_dependency "business_time"
  s.add_runtime_dependency "activesupport"

  s.add_development_dependency "testrocket"
  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
