require_relative 'lib/tic_tac_toe/version.rb'

Gem::Specification.new do |spec|
  spec.name          = 'tic_tac_toe'
  spec.version       = TicTacToe::VERSION
  spec.authors       = ['AeroPowells']
  spec.email         = ['90698361+AeroPowells@users.noreply.github.com']

  spec.summary       = %q{Tic-Tac-Toe in command line}
  spec.description   = %q{Introduction to OOP through tic-tac-toe game development}
  spec.homepage      = 'https://github.com/AeroPowells'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.7.0')

  spec.metadata['allowed_push_host'] = "http://mygemserver.com"

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = "https://github.com/AeroPowells"
  spec.metadata['changelog_uri'] = "https://github.com/AeroPowells/tic_tac_toe/blob/main/README.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.add_development_dependency 'rspec'
end
