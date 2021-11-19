# frozen_string_literal: true

require_relative 'lib/psd_shared_rails/version'

Gem::Specification.new do |spec|
  spec.name          = 'psd_shared_rails'
  spec.version       = PsdSharedRails::VERSION
  spec.authors       = ['James Glover']
  spec.email         = ['james.glover@sanger.ac.uk']

  spec.summary       = 'Corrects together standard elements of PSD rails applications'
  spec.description   = <<~DESCRIPTION
    This gem is intended to provide a convenient way to bootstrap an app with
    some of the standard gems and infrastructure tooling used by PSD. It is unlikely
    to be of interest to other teams.
  DESCRIPTION
  spec.homepage = 'https://github.com/sanger/psd_shared_rails'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.6.0')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  spec.metadata['changelog_uri'] = "#{spec.homepage}/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
