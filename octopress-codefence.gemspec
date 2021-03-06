# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'octopress-codefence/version'

Gem::Specification.new do |gem|
  gem.name          = "octopress-codefence"
  gem.version       = Octopress::Codefence::VERSION
  gem.authors       = ["Brandon Mathis"]
  gem.email         = ["brandon@imathis.com"]
  gem.summary       = %q{Generate beautiful code snippets with advanced features on any Jekyll site.}
  gem.homepage      = "https://github.com/octopress/codefence"
  gem.license       = "MIT"

  gem.add_runtime_dependency 'octopress-code-highlighter', '~> 4.2'
  gem.add_runtime_dependency 'jekyll', '~> 3.0'

  gem.add_development_dependency 'clash'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rouge'

  gem.files         = `git ls-files`.split($/).reject {|f| f =~ /^test\// }
  gem.require_paths = ["lib"]
end
