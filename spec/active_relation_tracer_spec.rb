require 'spec_helper.rb'

include ActiveRelationTracer

module ActiveRecord
  class Relation
  end
end


describe ActiveRelationTracer do
  before(:all) do
    ActiveRecord::Relation.send(:include, ActiveRelationTracer)
  end

  it "passes" do
    expect(true).to be_truthy
  end
end