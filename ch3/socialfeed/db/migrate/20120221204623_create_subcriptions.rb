# frozen_string_literal: true

class CreateSubcriptions < ActiveRecord::Migration
  def change
    create_table :subcriptions do |t|
      t.integer :user_id
      t.integer :feed_id

      t.timestamps
    end
  end
end
