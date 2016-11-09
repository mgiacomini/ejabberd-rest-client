# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ejabberd/rest/client'

Gem::Specification.new do |spec|
  spec.name = 'ejabberd-rest-client'
  spec.version = Ejabberd::Rest::Client::VERSION
  spec.authors = ['Mauricio Giacomini Girardello']
  spec.email = ['mauriciogiacomini4@gmail.com']

  spec.summary = %q{Ruby implementation of ejabberd admin rest api}
  spec.description = %q{Ruby implementation of ejabberd admin rest api}
  spec.homepage = 'http://www.github.com/mgiacomini/ejabberd-rest-client'
  spec.license = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  #if spec.respond_to?(:metadata)
  #  spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  #else
  #  raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  #end

  spec.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir = 'bin'
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'json', '~> 1.8', '>= 1.8.3'
  spec.add_runtime_dependency 'resource_kit', '>= 0.1.5'
  spec.add_runtime_dependency 'kartograph', '>= 0.2.4'
  spec.add_runtime_dependency 'faraday', '~> 0.9.2'
  spec.add_runtime_dependency 'net-http-persistent', '~> 2.9', '>= 2.9.4'
  spec.add_runtime_dependency 'activesupport'

  spec.add_development_dependency 'bundler', '~> 1.12'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.4', '>= 3.4.0'
end
