require 'spec_helper'

describe User do
  user = FactoryGirl.build(:user)
  it 'Should have a valid factory' do
    user.should be_valid
  end

  it 'Should have a valid firstname' do
    user.first_name.should_not be_nil
  end

  it 'Should have a valid lastname' do

  end

  it 'Should have a valid email' do

  end

  it 'Should have a valid password' do
  
  end

  it 'Should have many recipes'
end
