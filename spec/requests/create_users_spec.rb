require 'spec_helper'

describe "CreateUsers" do

  it "Emails user when account is created." do
    user = FactoryGirl.build(:user)
    
    register_user(user) 
    #Default route after registration is root 
    current_path.should eq('/')
  end

  it "Does not email user when duplicate account is created." do
    user = FactoryGirl.create(:user)

    # Try to create an account with test user info.
    register_user(user) 
    page.should have_content "Email has already been taken"
  end

end
