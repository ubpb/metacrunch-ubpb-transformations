# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "metacrunch/ubpb/transformations/version"

Gem::Specification.new do |spec|
  spec.name          = "metacrunch-ubpb-transformations"
  spec.version       = Metacrunch::UBPB::Transformations::VERSION
  spec.authors       = ["René Sprotte"]
  spec.email         = "r.sprotte@ub.uni-paderborn.de"
  spec.summary       = %q{A private collection of metacrunch transformation routines used at University Library of Paderborn.}
  spec.homepage      = "http://github.com/ubpb/metacrunch-ubpb-transformations"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport",      ">= 0"
  spec.add_dependency "htmlentities",       "~> 4.3"
  spec.add_dependency "metacrunch-marcxml", "~> 3.0"
end

