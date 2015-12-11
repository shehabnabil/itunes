require './lib/itunes/version'

Gem::Specification.new do |s|
	s.name = "itunes"
	s.version= Itunes::VERSION 
	s.platform= Gem::Platform::RUBY
	s.author= "Shehab Nabil"
	s.email= ["shehababdel@hotmail.com"]
	s.homepage= "https://github.com/shehabnabil/itunes"
	s.summary= "Easy access to iTunes API "
	s.description= "acccess (search / lookup) items in the iTunes library through its public API."
	s.license= "MIT"
	s.required_ruby_version = ">= 2.0.0"
	s.files = ['lib/itunes.rb']
	s.files += Dir["lib/itunes/**"]

	s.add_development_dependency 'rspec'
	s.add_development_dependency 'webmock'
	s.add_development_dependency 'vcr'

	
end