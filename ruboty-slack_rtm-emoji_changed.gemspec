require_relative 'lib/ruboty/slack_rtm/emoji_changed/version'

Gem::Specification.new do |spec|
  spec.name          = "ruboty-slack_rtm-emoji_changed"
  spec.version       = Ruboty::SlackRTM::EmojiChanged::VERSION
  spec.authors       = ["Kazuhiro NISHIYAMA"]
  spec.email         = ["zn@mbf.nifty.com"]

  spec.summary       = %q{notify when emoji_changed with ruboty-slack_rtm}
  spec.description   = %q{notify when emoji_changed with ruboty-slack_rtm}
  spec.homepage      = "https://github.com/znz/ruboty-slack_rtm-emoji_changed"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/znz/ruboty-slack_rtm-emoji_changed"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
