$LOAD_PATH.unshift 'lib'
require 'active_relation_tracer/version'

Gem::Specification.new do |s|
  s.name        = "active_relation_tracer"
  s.version     = ActiveRelationTracer::Version
  s.date        = Time.now.strftime('%Y-%m-%d')
  s.summary     = "Code Challenge - method tracing in ActiveRelation."
  s.homepage    = "http://github.com/xlymian/active_relation_tracer"
  s.email       = "paul.mylchreest@mac.com"
  s.authors     = [ "Paul Mylchreest" ]
  s.license     = "LICENSE"
  s.files       = %w( README.md Rakefile LICENSE )
  s.files       += Dir.glob("lib/**/*")
  s.files       += Dir.glob("spec/**/*")
  s.description = <<-DESCRIPTION
    This is a coding challenge. Wrap ActiveRelation methods calls for logging
    to STDERR and distribute as a gem.
  DESCRIPTION

  s.add_dependency("activesupport", "4.2.2")
end
