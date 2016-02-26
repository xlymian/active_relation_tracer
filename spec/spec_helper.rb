require_relative '../lib/active_relation_tracer'
require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: "sqlite3", 
  database: ":memory:")

ActiveRecord::Schema.define do
  self.verbose = false

  create_table :users, :force => true do |t|
    t.string :first_name
    t.string :last_name
  end
end
