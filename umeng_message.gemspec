# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'umeng_message/version'

Gem::Specification.new do |spec|
  spec.name          = 'umeng_message'
  spec.version       = UmengMessage::VERSION
  spec.authors       = ['tl']
  spec.email         = ['tianlu1677@gmail.com']
  spec.licenses       = ['MIT']
  spec.summary       = 'The encapsulation of umeng message!'
  spec.description   = '友盟推送Ruby封装'
  spec.homepage      = 'https://github.com/hzlu/umeng_message'
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'httpi', '~> 0'

  spec.add_development_dependency 'bundler', '> 1.9'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 0'  
  spec.add_development_dependency 'rails', '>= 5.2'
end
