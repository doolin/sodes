# frozen_string_literal: true

class User < ActiveRecord::Base
  validates_uniqueness_of :name, :email
  def to_json(*_args)
    super(except: :password)
  end
end
