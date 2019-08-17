# frozen_string_literal: true

class Entry < ActiveRecord::Base
  belongs_to :feed
  has_many :comments
end
