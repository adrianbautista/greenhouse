# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'greenhouse/version'

Gem::Specification.new do |spec|
  spec.name          = "greenhouse-io"
  spec.version       = Greenhouse::VERSION
  spec.authors       = ["Adrian Bautista"]
  spec.email         = ["adrianbautista8@gmail.com"]
  spec.description   = %q{A Ruby based wrapper for Greenhouse.io API}
  spec.summary       = %q{A Ruby based wrapper for Greenhouse.io API}
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency('httmultiparty')
  spec.add_dependency('multi_json', '~> 1.8.0')

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.14.1"
  spec.add_development_dependency "webmock", "~> 1.8.0"
  spec.add_development_dependency "vcr", "~> 2.5.0"

  spec.post_install_message = %Q{
  !    The greenhouse-io gem has been deprecated and has been replaced by greenhouse_io.
  !    See: https://rubygems.org/gems/greenhouse_io
  !    And: https://github.com/adrianbautista/greenhouse_io
  }
end


