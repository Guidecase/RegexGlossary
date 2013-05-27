# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'regex_glossary/version'

Gem::Specification.new do |spec|
  spec.name          = "regex_glossary"
  spec.version       = RegexGlossary::VERSION
  spec.summary       = "Earlydoc Regular Expression Glossary"
  spec.description   = "This gem contains a module of regular expressions objects for consistent validation and business logic."
  spec.authors       = ['Earlydoc', 'Travis Dunn']
  spec.email         = 'developer@earlydoc.com'
  spec.homepage      = 'https://www.earlydoc.com'
  spec.license       = "MIT"
  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end