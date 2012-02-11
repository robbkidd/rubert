# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','rubert_version.rb'])
spec = Gem::Specification.new do |s|
  s.name = 'rubert'
  s.version = Rubert::VERSION
  s.author = 'Robb Kidd'
  s.email = 'robb@thekidds.org'
  s.homepage = 'https://github.com/robbkidd/rubert/'
  s.platform = Gem::Platform::RUBY
  s.summary = 'Command line client for Request Tracker'
# Add your other files here if you make them
  s.files = %w(
bin/rubert
  )
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','rubert.rdoc']
  s.rdoc_options << '--title' << 'rubert' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'rubert'
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
end
