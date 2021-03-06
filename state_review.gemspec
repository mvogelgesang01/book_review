# frozen_string_literal: true

require_relative "lib/book_review/version"

Gem::Specification.new do |spec|
  spec.name          = "book_review"
  spec.version       = BookReview::VERSION
  spec.authors       = ["Melissa Vogelgesang\ncat ~/.ssh/id_rsa.pub\nssh-keygen\n\nssh-rsa\nssh-keygen\ncat ~/.ssh/id_rsa.pub\ncat ~/.ssh/id_rsa.pub\n'\n"]
  spec.email         = ["mvogelgesang01@gmail.com"]

  spec.summary       = "Book Review from the command live"
  spec.description   = "Book Review"
  spec.homepage      = "https://bookmarks.reviews/biggest-new-books/"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.4.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/mvogelgesang01/state_review"
  #spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]



  spec .add_development_dependency "bundler", "~> 2.2.19"
  spec .add_development_dependency "rake", "~> 10.0"
  spec .add_development_dependency "rspec", "~> 3.0"
  spec .add_development_dependency "pry" 
  spec .add_development_dependency "nokogiri"

end

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html

