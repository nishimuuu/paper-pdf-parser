# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'paper/pdf/parser/version'

Gem::Specification.new do |spec|
  spec.name          = "paper-pdf-parser"
  spec.version       = Paper::Pdf::Parser::VERSION
  spec.authors       = ["Takahiro Nishimura"]
  spec.email         = ["tkhr.nishimura@gmail.com"]

  spec.summary       = %q{Fetch citation list to parse paper pdf }
  spec.description   = %q{All paper certainly has citation list. However it is hard to extract reference list cuz part of citation list locate lowest part in pdf and all browser is so slow to show pdf file of paper that we get tired to fetch paper. Moreover using pdftohtml or pdftotext, this command cannnot parse multi-column pdf. I develop suitablly-parse multi-column pdf file and fetch citation list.}
  spec.homepage      = "https://github.com/nishimuuu/paper-pdf-parser"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.com"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_dependency 'thor', "~> 0.19"
  spec.add_dependency 'pdf-reader', "~> 1.4"
  spec.add_dependency 'nokogiri', "~> 1.6"
end
