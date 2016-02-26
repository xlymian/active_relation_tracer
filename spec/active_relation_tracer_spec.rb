require 'spec_helper.rb'
require_relative '../lib/active_relation_tracer/active_relation_tracer'

class User < ActiveRecord::Base
end

describe ActiveRelationTracer do
  before(:all) do
    ActiveRecord::Relation.send(:include, ActiveRelationTracer)
  end

  it "traces calls to :where" do
    expected = %{Calling 'where' with '[{:first_name=>"John"}]'}
    expect(STDERR).to receive(:puts).once.with(expected)
    User.where(first_name: "John").first
    expect(true).to be_truthy
  end
end
