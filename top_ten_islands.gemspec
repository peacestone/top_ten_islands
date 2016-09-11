# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'top_ten_islands/version'

Gem::Specification.new do |spec|
  spec.name          = "top_ten_islands"
  spec.version       = TopTenIslands::VERSION
  spec.authors       = ["Sholom Steinmetz"]
  spec.email         = ["sholomsteinmetz@gmail.com"]

  spec.summary       = "Shows a list of the worlds top ten islands to visit"
  spec.description   = "Shows a list of the worlds top ten islands to go to for a vacation after a day of coding"
  spec.homepage      = "https://github.com/peacestone/top_ten_islands"
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib" , "lib/top_ten_islands"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "nokogiri" "~> 1.6", ">= 1.6.6.2"
  spec.add_development_dependency "pry", "~> 0.10.3"
  spec.add_development_dependency "rubysl-open-uri", "~> 2.0", ">= 2.0"

end
