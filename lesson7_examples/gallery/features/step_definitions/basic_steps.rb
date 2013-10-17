Given(/^I am on homepage$/) do
  visit root_path
end

Then(/^I should see "(.*?)"$/) do |wording|
  page.should have_content wording
end

When(/^I go to homepage$/) do
  visit root_path
end

When(/^I click "(.*?)" link$/) do |link|
  click_link link
end

When(/^press "(.*?)" button$/) do |button|
  click_button button
end