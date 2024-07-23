Gem::Specification.new do |s|
  s.name = "include_all"
  s.version = "0.0.1"
  s.authors = ["Douglas Luman"]
  s.email = "dluman@allegheny.edu"
  s.summary = "A wonderfully simple way to include modules from your code"

  s.files = `git ls-files`.split($\)
  s.test_files = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ["lib"]

  s.homepage = "http://github.com/dluman/include_all"
  s.license = "CC0" 

  s.has_rdoc = true
  s.rdoc_options = %w(--title require_all --main README.md --line-numbers)
  s.extra_rdoc_files = ["LICENSE", "README.md"]

  s.add_development_dependency "rake",  "~> 10.4"
  s.add_development_dependency "rspec", "~> 3.2"
  s.add_development_dependency "simplecov", "~> 0.7"
end
