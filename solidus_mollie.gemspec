# encoding: UTF-8

$:.push File.expand_path('../lib', __FILE__)
require 'solidus_mollie/version'

Gem::Specification.new do |s|
  s.name        = 'solidus_mollie'
  s.version     = SolidusMollie::VERSION
  s.summary     = 'Add Mollie payments to your Solidus store'
  s.description = s.summary
  s.license     = 'BSD-3-Clause'

  s.author    = 'Peter Berkenbosch'
  s.email     = 'info@peterberkenbosch.nl'
  s.homepage  = 'http://peterberkenbosch.nl'

  s.files = Dir["{app,config,db,lib}/**/*", 'LICENSE', 'Rakefile', 'README.md']
  s.test_files = Dir['test/**/*']

  s.add_dependency 'solidus_core', '~> 2.6'
  s.add_dependency 'solidus_support', '0.6.0'
  s.add_dependency 'mollie-api-ruby'

  s.add_development_dependency 'capybara'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'poltergeist'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_bot'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'rubocop', '0.65.0'
  s.add_development_dependency 'rubocop-rspec', '1.32.0'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'simplecov-console'
  s.add_development_dependency 'coveralls'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'pg'
  s.add_development_dependency 'mysql2'
end
