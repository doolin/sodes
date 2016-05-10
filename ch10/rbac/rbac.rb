# require 'rubygems'
require 'sinatra'
require 'json'
require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: File.dirname + "/../db/saint_peter_#{Sinatra::Application.environment}.sqlite3.db"
)

class RoleBased < ActiveRecord::Base
end
