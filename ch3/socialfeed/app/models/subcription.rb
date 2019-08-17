# frozen_string_literal: true

class Subcription < ActiveRecord::Base
  belongs_to :user
  belongs_to :feed

  after_create { |record| SubscriptionActivity.write(record) }
end
