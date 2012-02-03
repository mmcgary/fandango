# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "fandango/version"

Gem::Specification.new do |s|
  s.name        = "fandango"
  s.version     = Fandango::VERSION
  s.authors     = ["Jared Ning"]
  s.email       = ["jared@redningja.com"]
  s.homepage    = "https://github.com/ordinaryzelig/fandango"
  s.summary     = "Fandango API"
  s.description = "Find theaters and movies on sale near a given postal code"

  s.rubyforge_project = "fandango"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'activesupport', '> 3.0.8', '< 3.2.0'
  s.add_runtime_dependency 'feedzirra', '0.1.1'

  s.add_development_dependency 'awesome_print'
  s.add_development_dependency 'mocha', '0.10.3'
  s.add_development_dependency 'minitest', '2.11.1'
end
