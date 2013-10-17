email = 'test@example.com'
password = 'thisisasecret'

Given(/^I am not logged in$/) do
  visit '/users/sign_out'
end

Then(/^I should be in the sign in page$/) do
  current_path.should == '/users/sign_in'
end

Given(/^I have an account$/) do
  User.new(email:email, password:password).save!
end

Given(/^I am on sign in page$/) do
  visit '/users/sign_in'
end

When(/^I fill in correct account information$/) do
  fill_in 'Email', with: email
  fill_in 'Password', with: password
end

Given(/^I have logged in$/) do
  User.new(email:email, password:password).save!
  visit '/users/sign_in'
  fill_in 'Email', with: email
  fill_in 'Password', with: password
  click_button 'Sign in'
end