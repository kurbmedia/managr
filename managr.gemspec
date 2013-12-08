$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "managr/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "managr"
  s.version     = Managr::VERSION
  s.authors     = ["Brent Kirby"]
  s.email       = ["dev@kurbmedia.com"]
  s.homepage    = "http://kurbmedia.com"
  s.summary     = "Managr is a framework for building complex project and time management systems."
  s.description = "Managr is a framework for building complex project and time management systems."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency("rails", ">= 3.2.6", "< 5")
  s.add_dependency("jbuilder", "~> 1.5")
  s.add_dependency("devise", "~> 3.2")
  s.add_dependency("inherited_resources", "~> 1.4.1")
  s.add_dependency("has_scope", "~> 0.5")
  s.add_dependency("kaminari", "~> 0.15")
  
  s.add_development_dependency("rspec", ">= 2.14.0")
  s.add_development_dependency("rspec-rails", ">= 2.14.0")
  s.add_development_dependency("machinist", "~> 2.0")
  
  s.add_development_dependency("mysql2", "~> 0.3.11")
  
end
