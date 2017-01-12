# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mathgames/version'

Gem::Specification.new do |spec|
  spec.name          = "mathgames"
  spec.version       = Mathgames::VERSION
  spec.authors       = ["Chiara Piccinini Núñez"]
  spec.email         = ["chiaraani@gmail.com"]

  spec.summary       = %q{It's a gem about math games like "Guess a number" game.}
  spec.description   = %q{This gem has "Guess a Number" game.}
  spec.homepage      = "https://github.com/chiaraani/mathgames"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add__dependency "rb-readline", "~> 0.5.3"
end
