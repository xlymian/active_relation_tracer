require 'rspec/core/rake_task'
require 'rubygems/package_task'

spec = eval(File.read('active_relation_tracer.gemspec'))

Gem::PackageTask.new(spec) do |pkg|
end

RSpec::Core::RakeTask.new do |t|
  t.rspec_opts = [ "--color" ]
end

task :default => :spec
