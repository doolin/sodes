# frozen_string_literal: true

require File.dirname(__FILE__) + '/../client'

describe 'client' do
  before(:each) do
    User.base_uri = 'http://localhost:4567'
  end

  it 'should get a user' do
    user = User.find_by(name: 'paul')
    expect(user['user']['name']).to eq 'paul'
    expect(['user']['email']).to eq 'paul@pauldix.net'
    expect(['user']['bio']).to eq 'rubyist'
  end

  it 'should return nil for a user not found' do
    User.find_by_name('gosling').should be_nil
  end

  it 'should create a user' do
    user = User.create(name: 'trotter', email: 'no spam', password: 'whatev')
    user['user']['name'].should == 'trotter'
    user['user']['email'].should == 'no spam'
    User.find_by_name('trotter').should == user
  end

  it 'should update a user' do
    user = User.update('paul', bio: 'rubyist and author')
    user['user']['name'].should == 'paul'
    user['user']['bio'].should == 'rubyist and author'
    User.find_by_name('paul').should == user
  end

  it 'should destroy a user' do
    User.destroy('bryan').should == true
    User.find_by_name('bryan').should be_nil
  end

  it 'should verify login credentials' do
    user = User.login('paul', 'strongpass')
    user['user']['name'].should == 'paul'
  end

  it 'should return nil with invalid credentials' do
    User.login('paul', 'wrongpassword').should be_nil
  end
end
