# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'api_wrapper/auth/http_basic'

Gem::Specification.new do |spec|
  spec.name          = 'api_wrapper-auth-http_basic'
  spec.version       = ApiWrapper::Auth::HttpBasic.VERSION
  spec.authors       = ['Mike Cochran']
  spec.email         = ['mcochran@linux.com']

  spec.summary       = %q{Authentication plugin for ApiWrapper that provides HTTP Basic Authentication support}
  spec.homepage      = 'https://github.com/vongrippen/api_wrapper-auth-http_basic'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.13'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'pry'
end
