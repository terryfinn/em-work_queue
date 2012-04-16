# -*- encoding: utf-8 -*-
require File.expand_path('../lib/em-work_queue/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Terry Finn"]
  gem.email         = ["terry@terryrfinn.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "em-work_queue"
  gem.require_paths = ["lib"]
  gem.version       = Em::WorkQueue::VERSION
  
  gem.add_development_dependency 'rspec', '~>2.9.0'
  gem.add_dependency 'eventmachine'
end
