# -*- encoding: utf-8 -*-

$:.push File.expand_path("../lib", __FILE__)
require 'solidus_cmd/version'

Gem::Specification.new do |s|
  s.name        = 'solidus_cmd'
  s.version     = SolidusCmd::VERSION
  s.authors     = 'Solidus Team'
  s.email       = 'contact@solidus.io'
  s.homepage    = 'http://solidus.io'
  s.license     = 'BSD-3-Clause'
  s.summary     = 'Solidus command line utility'
  s.description = 'tools to create new Solidus extensions'
  s.post_install_message = <<-EOT
    This extension was deprecated in favor of solidus_extension_dev_tools
    (https://github.com/solidusio-contrib/solidus_extension_dev_tools)
  EOT

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.bindir        = 'bin'
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency 'byebug'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rubocop', '~> 0.71'
  s.add_development_dependency 'rubocop-rails'
  s.add_development_dependency 'rubocop-rspec'
  s.add_development_dependency 'relaxed-rubocop'
  s.add_development_dependency 'gem-release'
  # Temporary hack until https://github.com/wycats/thor/issues/234 is fixed
  s.add_dependency 'thor', '>= 0.14', '< 2.0'
end
