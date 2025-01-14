# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails_menu_manager/version'

Gem::Specification.new do |spec|
  spec.name          = 'rails-menu-manager'
  spec.version       = RailsMenuManager::VERSION
  spec.authors       = ['Florian Schwab']
  spec.email         = ['me@ydkn.de']
  spec.summary       = 'Simple menu manager for Rails.'
  spec.description   = 'Simple menu manager for Rails.'
  spec.homepage      = 'https://gitlab.com/ydkn/rails-menu-manager'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.7.0'

  spec.add_dependency 'railties', '>= 6.1', '< 7.2'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'rubocop-performance'
end
