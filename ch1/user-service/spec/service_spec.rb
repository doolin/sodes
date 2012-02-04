require File.dirname(__FILE__) + '/../service'
require 'test/unit'
require 'rspec'
#require 'rspec/interop/test'
require 'rack/test'

set :environment, :test
Test::Unit::TestCase.send :include, Rack::Test::Methods

def app
  Sinatra::Application
end

describe "service" do
#=begin
  before(:each) do
    User.delete_all
  end
#=end
  describe "GET on /api/v1/users/:id" do

    before(:each) do
      User.create(
        :name => 'paul',
        :email => 'paul@pauldix.net',
        :password => 'strongpass',
        :bio => 'rubyist')
    end

    it "should return a user by name" do
      get '/api/v1/users/paul' do
        last_response.should be_ok
        attributes = JSON.pars(last_response.body)
        attributes['name'].should == 'paul'
      end
    end

    it "should return a user with an email" do
      get '/api/v1/users/paul' do
        last_response.should be_ok
        attributes = JSON.pars(last_response.body)
        attributes['email'].should == 'paul@pauldix.net'
      end
    end

    it "should not return a user's password" do
      get '/api/v1/users/paul' do
        last_response.should be_ok
        attributes = JSON.pars(last_response.body)
        attributes.should_not have_key('password')
      end
    end

    it "should return a user with a bio" do
      get '/api/v1/users/paul' do
        last_response.should be_ok
        attributes = JSON.pars(last_response.body)
        attributes['bio'].should == 'rubyist'
      end
    end

    it "should return a 404 for a user that doesn't exist" do
      get '/api/v1/users/foo' do
        last_response.status.should == 404
      end
    end

  end
end
