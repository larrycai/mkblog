require 'rubygems/package_task'
require 'rdoc/task'
require 'cucumber'
require 'cucumber/rake/task'

spec = eval(File.read('mkblog.gemspec'))
Gem::PackageTask.new(spec) do |pkg|
end

RDoc::Task.new do |rd|
  rd.main = "README.rdoc"
  rd.rdoc_files.include("README.rdoc","lib/**/*.rb","bin/**/*")
  rd.title = 'mkblog - make jekyll based blog'
end

Cucumber::Rake::Task.new(:cucumber) do |t|
  t.cucumber_opts = "features --format pretty -x"
  t.fork = false
end

task :default => [:cucumber,:package,:gem]