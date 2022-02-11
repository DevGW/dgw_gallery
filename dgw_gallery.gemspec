require_relative "lib/dgw_gallery/version"

Gem::Specification.new do |spec|
  spec.name          = "dgw_gallery"
  spec.version       = DgwGallery::VERSION
  spec.authors       = ["Dev Ghost Writers"]
  spec.email         = ["ruby-gems@devghostwriters.com"]
  spec.summary       = %q{A simple gallery for ruby on rails sites}
  spec.description   = %q{(This is a current work in progress so bear with us.) A simple gallery for ruby on rails sites that includes a layout for either a bootstrap carousel or responsive image page.}
  spec.homepage      = "https://github.com/DevGW/dgw_gallery"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
#   spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

#   spec.metadata["homepage_uri"] = spec.homepage
#   spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
#   spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.1.4", ">= 6.1.4.4"
  spec.add_dependency 'image_processing', '~> 1.2'
end
