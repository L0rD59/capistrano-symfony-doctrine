# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "capistrano-symfony-doctrine"
  spec.version       = '0.2.10'
  spec.authors       = ["Emil Kilhage"]
  spec.email         = ["emil.kilhage@glooby.com"]

  spec.summary       = %q{doctrine migrations & cache clearing support for Capistrano 3.x}
  spec.description   = %q{doctrine migrations & cache clearing support for Capistrano 3.x}
  spec.homepage      = "https://www.glooby.se"
  spec.license       = "MIT"

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'capistrano', '>= 3.1.0'
  spec.add_dependency 'capistrano-symfony', '>= 0.4.0'

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
