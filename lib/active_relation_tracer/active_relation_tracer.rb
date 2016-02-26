require 'active_support/concern'

module ActiveRelationTracer
  extend ActiveSupport::Concern

  included do
    class_eval do
      name = :where
      original_method = instance_method(name)
      define_method(name) do |*args, &block|
        trace = "Calling '#{name}' with '#{args.inspect}'"
        STDERR.puts trace
        original_method.bind(self).call *args, &block
      end
    end

    class_eval do
      name = :order
      original_method = instance_method(name)
      define_method(name) do |*args, &block|
        trace = "Calling '#{name}' with '#{args.inspect}'"
        STDERR.puts trace
        original_method.bind(self).call *args, &block
      end
    end

    class_eval do
      name = :limit
      original_method = instance_method(name)
      define_method(name) do |*args, &block|
        trace = "Calling '#{name}' with '#{args.inspect}'"
        STDERR.puts trace
        original_method.bind(self).call *args, &block
      end
    end

  end

end
