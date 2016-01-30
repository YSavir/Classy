# coding utf-8
lib = File.expand_path '../lib', __FILE__
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include? lib
require 'classy/version'

Gem::Specification.new do |spec|
  spec.name          = 'classy_css'
  spec.version       = Classy::VERSION
  spec.authors       = ['Yaniv Savir']
  spec.email         = ['saviry@gmail.com']
  spec.description   = %q{A CSS compiler that allows you to write CSS as if it were Ruby}
  spec.summary       = %q{An object oriented CSS compiler}
  spec.homepage      = 'https://github.com/YSavir/classy'
  spec.license       = 'MIT'
  
  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename f }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'pry', '~> 0.10'
  spec.add_development_dependency 'rspec', '~> 3.4'
  spec.add_development_dependency 'guard-rspec', '~> 4.6'
end

