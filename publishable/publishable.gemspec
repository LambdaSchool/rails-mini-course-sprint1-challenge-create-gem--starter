lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "publishable/version"

Gem::Specification.new do |spec|
  spec.name          = "publishable"
  spec.version       = Publishable::VERSION
  spec.authors       = ["Michael Agard"]
  spec.email         = ["mdagard@gmail.com"]

  spec.summary       = %q{TODO: Gem that can be used across applications that have `published_at` fields in their models.}
  spec.description   = %q{TODO: Gem that can be used across applications that have `published_at` fields in their models. Gem that provides `publish`, `unpublish` and `pubished?` methods that can be mixed in to our `awesome_blog` application's models.}
  spec.homepage      = "https://github.com/michaelagard/rails-mini-course-sprint1-challenge-create-gem--starter"

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/michaelagard/rails-mini-course-sprint1-challenge-create-gem--starter"
  spec.metadata["changelog_uri"] = "publishable/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
end
