$LOAD_PATH.unshift 'lib'
require 'active_relation_tracer/version'

Gem::Specification.new do |s|
  s.name              = "active_relation_tracer"
  s.version           = ActiveRelationTracer::Version
  s.date              = Time.now.strftime('%Y-%m-%d')
  s.summary           = "Code Challenge - method tracing in ARel."
  s.homepage          = "http://github.com/xlymian/active_relation_tracer"
  s.email             = "paul.mylchreest@mac.com"
  s.authors           = [ "Paul Mylchreest" ]

  # s.files             = %w( README.markdown Rakefile LICENSE HISTORY.md )
  # s.files            += Dir.glob("bin/**/*")
  s.files            += Dir.glob("lib/**/*")
  # s.files            += Dir.glob("spec/**/*")
  # s.files            += Dir.glob("templates/**/*")
  # s.files            += Dir.glob("lib/tasks/**/*")
  # s.executables       = [ "hansel" ]

  # s.rdoc_options      = ["--charset=UTF-8"]

  s.add_dependency("activesupport", "4.2.2")

  s.description = <<-DESCRIPTION
    This is a coding challenge. Wrap ActiveRelation methods calls for logging
    to STDERR and distribute as a gem.
    DESCRIPTION
end
