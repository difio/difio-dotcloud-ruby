# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "monupco-dotcloud-ruby/version"

Gem::Specification.new do |s|
  s.name        = "monupco-dotcloud-ruby"
  s.version     = Monupco::dotCloud::VERSION
  s.authors     = ["Alexander Todorov"]
  s.email       = ["atodorov@otb.bg"]
  s.homepage    = "http://github.com/monupco/monupco-dotcloud-ruby"
  s.summary     = %q{monupco.com registration agent for dotCloud / Ruby applications}
  s.description = %q{monupco.com registration agent for dotCloud / Ruby applications. See the README for usage.}

  s.rubyforge_project = "monupco-dotcloud-ruby"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  s.add_runtime_dependency "common-ruby-monupco"
end
