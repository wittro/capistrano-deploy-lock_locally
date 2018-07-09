# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/deploy/lock_locally/version'

Gem::Specification.new do |spec|
  spec.name          = 'capistrano-deploy-lock_locally'
  spec.version       = Capistrano::Deploy::LockLocally::VERSION
  spec.authors       = ['ITO Wataru']
  spec.email         = ['wittrou@gmail.com']

  spec.summary       = 'A feature to lock the deployment for upper Capistrano 3.4.x'
  spec.description   = 'Make an exclusive lock on your deploy server for Capistrano 3.4.x when you deploy'
  spec.homepage      = 'https://github.com/wittro/capistrano-deploy-lock_locally'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'capistrano', '>= 3.4'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
