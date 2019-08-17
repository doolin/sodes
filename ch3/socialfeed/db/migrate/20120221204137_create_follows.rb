# frozen_string_literal: true

class CreateFollows < ActiveRecord::Migration
  def change
    create_table :follows do |t|
      t.integer :user_id
      t.integer :followed_user_id

      t.timestamps
    end
  end
end
