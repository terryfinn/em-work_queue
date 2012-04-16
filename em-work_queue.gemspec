# -*- encoding: utf-8 -*-
require File.expand_path('../lib/em-work_queue/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Terry Finn"]
  gem.email         = ["terry@terryrfinn.com"]
  gem.description   = %q{Makes working with EventMachine's queue more convenient.  It adds start/stop/status methods, and keeps the queue and queue logic packed together.}
  gem.summary       = %q{Makes working with EventMachine's queue more convenient.}
  gem.homepage      = "https://github.com/terryfinn/em-work_queue"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "em-work_queue"
  gem.require_paths = ["lib"]
  gem.version       = Em::WorkQueue::VERSION
  
  gem.add_development_dependency 'rspec', '~>2.9.0'
  gem.add_dependency 'eventmachine'
end
