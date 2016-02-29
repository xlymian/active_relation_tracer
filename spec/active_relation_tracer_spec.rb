require 'spec_helper.rb'
require_relative '../lib/active_relation_tracer/active_relation_tracer'

class User < ActiveRecord::Base
end

ActiveRelationTracer::TRACE_METHODS = [ :where, :order, :limit ]
ActiveRecord::Relation.send(:include, ActiveRelationTracer)

describe ActiveRelationTracer do
  it "traces calls to :where" do
    expected = %{Calling 'where' with '[{:first_name=>"John"}]'}
    expect(STDERR).to receive(:puts).once.with(expected)
    User.where(first_name: "John")
  end

  it "traces calls to :order" do
    expected = %{Calling 'order' with '[{:first_name=>:desc}]'}
    expect(STDERR).to receive(:puts).once.with(expected)
    User.order(first_name: :desc)
  end

  it "traces calls to :limit" do
    expected = %{Calling 'limit' with '[1]'}
    expect(STDERR).to receive(:puts).once.with(expected)
    User.limit(1)
  end
end
