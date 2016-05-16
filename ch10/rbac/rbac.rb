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
    if obj
      update_attributes(attrs)
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

post '/resources' do
  auth = Resource.find_and_update_or_create(params)
  auth ? 'Created' : 'Failed'
end

# Tell whether a user is authorized for a given resource
get '/users/:name/authorizations' do |name|
  user_roles = User.find_by_name(name).roles rescue []
  auth_roles = Resource.find_by_name(params[:resource]).roles rescue []

  # if subtracting auth_roles from user_roles results in a shorter
  # array, then at least one element in auth_roles is in user_roles.
  authorized = (user_roles - auth_roles).length != user_roles.length
  {authorized: authorized}.to_json
end
