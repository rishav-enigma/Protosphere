# frozen_string_literal: true

require_relative "lib/protosphere/version"

Gem::Specification.new do |spec|
  spec.name          = "protosphere"
  spec.version       = Protosphere::VERSION
  spec.authors       = ["Rishav Kumar"]
  spec.email         = ["rishav.kumar@anchanto.com"]

  spec.summary       = "Manages all Protos for OMS 4."
  spec.description   = "Write all protos and generates protobuffers to be used globally."
  spec.homepage      = "https://github.com/rishav-enigma/Protosphere"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.5.0"

  spec.metadata["rubygems_mfa_required"] = "true"
  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
