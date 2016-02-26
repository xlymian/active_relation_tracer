require 'active_support/concern'

module ActiveRelationTracer
  extend ActiveSupport::Concern

  included do
    [:where, :order, :limit].each do |method|
      ActiveRelationTracer.wrap_method(self, method)
    end
  end

  def self.wrap_method(klass, name)
    klass.class_eval do
      original_method = instance_method(name) # create unbound method with original
      define_method(name) do |*args, &block|
        trace = "Calling '#{name}' with '#{args.inspect}'"
        STDERR.puts trace
        original_method.bind(self).call *args, &block # bind to self and call original
      end
    end
  end

end
