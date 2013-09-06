$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "managr/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "managr"
  s.version     = Managr::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Managr."
  s.description = "TODO: Description of Managr."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency("rails", ">= 3.2.6", "< 5")

  s.add_development_dependency("rspec", ">= 2.14.0")
  s.add_development_dependency("rspec-rails", ">= 2.14.0")
  s.add_development_dependency("machinist", "~> 2.0")
  
  s.add_development_dependency("mysql2", "~> 0.3.11")
  
end
