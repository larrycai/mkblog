# use template https://github.com/wycats/newgem-template/blob/master/newgem.gemspec
# and the guide from book : build awesome command line applications in ruby 

#require File.expand_path("../lib/mkblog/version", __FILE__)
$LOAD_PATH.push File.expand_path("../lib", __FILE__)
require "mkblog_version"

Gem::Specification.new do |s|
  s.name        = "mkblog"
  s.version     = MkBlog::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Larry Cai"]
  s.email       = ["larry.caiyu@gmail.com"]
  s.homepage    = "http://github.com/larrycai/mkblog"
  s.summary     = "tools to generate jekyll blog hosted in github"
  
  s.description = "generate jekyll based blog "

  s.required_rubygems_version = ">= 1.3.6"

  # lol - required for validation
  s.rubyforge_project         = "mkblog"

  # If you have other dependencies, add them here
  s.add_development_dependency('aruba', '~> 0.4.6')
  
  # If you need to check in files that aren't .rb files, add them here
  s.files        = Dir["{lib}/**/*.rb", "bin/*", "templates/**/*","README.rdoc","LICENSE"]
  s.require_path = 'lib'

  # If you need an executable, add it here
  s.executables = ["mkblog"]

  # If you have C extensions, uncomment this line
  # s.extensions = "ext/extconf.rb"
end