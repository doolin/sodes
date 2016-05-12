# require 'rubygems'
require 'sinatra'
require 'json'
require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: File.dirname + "/../db/saint_peter_#{Sinatra::Application.environment}.sqlite3.db"
)

class RoleBased < ActiveRecord::Base
  # This class is an interface for the other two and does not
  # require a table
  self.abstract_class = true

  # Either find an existing object and update it of
  # create a new object.
  def self.find_and_update_or_create(attrs)
    obj = find_by_name(attrs[:name])
  else
    create(attrs)
  end

  # we want to work with roles as an array
  def roles
    str = read_attribute(:roles)
    str.split(/ *, */)
  end
end

class User < RoleBased; end
class Resource < RoleBased; end

# Run on port 3333 to make it easier to test with the
# protected service.
set :port, 3333

# Handle user creation and updating
post '/users' do
  user = User.find_and_update_or_create(params)
  user ? 'Created' : 'Failed'
end
