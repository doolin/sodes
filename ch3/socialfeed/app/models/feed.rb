# frozen_string_literal: true

class Feed < ActiveRecord::Base
  has_many :entries
  has_many :subscriptions
  has_many :users, through: :subscriptions
end
