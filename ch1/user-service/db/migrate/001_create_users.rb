# frozen_string_literal: true

# some documentation to shut up rubocop
class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :bio

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
