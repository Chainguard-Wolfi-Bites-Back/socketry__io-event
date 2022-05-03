# frozen_string_literal: true

require_relative "lib/io/event/version"

Gem::Specification.new do |spec|
	spec.name = "io-event"
	spec.version = IO::Event::VERSION
	
	spec.summary = "An event loop."
	spec.authors = ["Samuel Williams", "Bruno Sutic", "Benoit Daloze", "Delton Ding", "machty"]
	spec.license = "MIT"
	
	spec.cert_chain  = ['release.cert']
	spec.signing_key = File.expand_path('~/.gem/release.pem')
	
	spec.homepage = "https://github.com/socketry/io-event"
	
	spec.files = Dir["ext/extconf.rb", "ext/io/**/*.{c,h}", "lib/**/*.rb"]
	
	spec.require_paths = ['lib']
	
	spec.extensions = ["ext/extconf.rb"]
	
	spec.required_ruby_version = ">= 3.0"
	
	spec.add_development_dependency "bake"
	spec.add_development_dependency "bundler"
	spec.add_development_dependency "covered"
	spec.add_development_dependency "sus", "~> 0.6"
end
