require File.expand_path("../lib/smile_rubocop/version", __FILE__)

Gem::Specification.new do |spec|
  spec.name          = "smile_rubocop"
  spec.version       = SmileRubocop::VERSION
  spec.authors       = ["Alex Willemsma"]
  spec.email         = ["alexw@smile.io"]

  spec.summary       = "Smile.io shared rubocop config."
  spec.homepage      = "https://www.smile.io"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rubocop", "0.52"

  spec.add_development_dependency "bundler", "~> 1.16"
end
