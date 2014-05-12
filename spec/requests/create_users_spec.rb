require 'spec_helper'

describe "CreateUsers" do

  it "Emails user when account is created." do
    testEmail = 'testguy@someplace.net'
    testPassword = 'password'
    visit new_user_registration_path
    fill_in :user_first_name, :with => "First"
    fill_in :user_last_name, :with => "Last"
    fill_in :user_email, :with => testEmail
    fill_in :user_password, :with => testPassword
    fill_in :user_password_confirmation, :with => testPassword
    click_button "Sign up"
   
    #Default route after registration is root 
    current_path.should eq('/')
  end

  it "Does not email user when duplicate account is created." do
    user = FactoryGirl.create(:user)

    # Try to create an accoutn with test user info.
    visit new_user_registration_path
    fill_in :user_first_name, :with => "First"
    fill_in :user_last_name, :with => "Last"
    fill_in :user_email, :with => user.email
    fill_in :user_password, :with => user.password
    fill_in :user_password_confirmation, :with => user.password
    click_button "Sign up"
    page.should have_content "Email has already been taken"
  end

end
