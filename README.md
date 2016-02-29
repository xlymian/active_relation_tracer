ActiveRelationTracer
====================

This is a coding challenge. Wrap ActiveRelation methods calls for logging
to STDERR and distribute as a gem.

# Setup

Add this to the `Gemfile`

```
gem 'active_relation_tracer', github: 'xlymian/active_relation_tracer'
```

Add a new rails initializer, `config/initializers/active_relation_tracer.rb` with the following contents:

```
require 'active_relation_tracer'

ActiveRelationTracer::TRACE_METHODS = [ :where, :order, :limit ]
ActiveRecord::Relation.send(:include, ActiveRelationTracer)
```
