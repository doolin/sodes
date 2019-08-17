# frozen_string_literal: true

class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :entry, counter_cache: true
  # Replication? Page 64 of SOAR
  after_create { |record| CommentActivity.write(record) }
end
