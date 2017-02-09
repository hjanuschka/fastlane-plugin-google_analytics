# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fastlane/plugin/google_analytics/version'

Gem::Specification.new do |spec|
  spec.name          = 'fastlane-plugin-google_analytics'
  spec.version       = Fastlane::GoogleAnalytics::VERSION
  spec.version = "#{spec.version}-alpha-#{ENV['TRAVIS_BUILD_NUMBER']}" if ENV['TRAVIS']
  spec.author        = %q{Helmut Januschka}
  spec.email         = %q{helmut@januschka.com}

  spec.summary       = %q{Fire universal Analytics}
  spec.homepage      = "https://github.com/hjanuschka/fastlane-plugin-google_analytics"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*"] + %w(README.md LICENSE)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  # Don't add a dependency to fastlane or fastlane_re
  # since this would cause a circular dependency

  spec.add_dependency 'staccato'

  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'fastlane', '>= 2.14.2'
end
