Then(/^I should be on the photo upload page$/) do
  current_path.should == '/photos/new'
end

Given(/^I am on photo upload page$/) do
  visit '/photos/new'
end

When(/^I upload a valid photo with title "(.*?)"$/) do |title|
  fill_in 'Title', with: title
  attach_file 'Image', File.join(Rails.root, 'features', 'upload_files', 'ok.png')
  click_button "Upload Photo"
end

When(/^I upload an invalid photo with title "(.*?)"$/) do |title|
  fill_in 'Title', with: title
  attach_file 'Image', File.join(Rails.root, 'features', 'upload_files', 'bad.txt')
  click_button "Upload Photo"
end
