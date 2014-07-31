# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'yard/minitest/version'

Gem::Specification.new do |spec|
  spec.name          = 'yard-minitest'
  spec.version       = YARD::Minitest::VERSION
  spec.authors       = ['Arjan van der Gaag']
  spec.email         = ['arjan@arjanvandergaag.nl']
  spec.summary       = %q{Include Minitest test case descriptions in your class documentation.}
  spec.description   = <<EOS
Parse Minitest files to read all the test case descriptions and include those
with the relevant classes in your YARD documentation. This works for both
ActiveSupport-style `test` blocks and regular old `def test_` methods. Test
cases get listed at the bottom of your class documentation and include the test
source code, file name and line numbers.
EOS
  spec.homepage      = 'https://github.com/avdgaag/yard-minitest'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'yard'
  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake', '~> 10.0'
end
