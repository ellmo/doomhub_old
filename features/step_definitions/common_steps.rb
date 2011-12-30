#=========
#= GIVEN =
#=========

Given /^I am NOT logged in$/ do
  visit logout_path
end

Given /^I am logged in$/ do
  user = Factory(:user)

  visit login_path
  fill_in "user_login", :with => user.email
  fill_in "user_password", :with => user.password
  click_button "Log in"
end

Given /^I am logged in as "(.+)"$/ do |login|
  user = Factory(:user, {:login => login})

  visit login_path
  fill_in "user_login", :with => user.email
  fill_in "user_password", :with => user.password
  click_button "Log in"
end

Given /^there are following users in database$/ do |table|
  table.hashes.each do |hash|
    Factory(:user, hash)
  end
end

Given /^I am on page "(.+)"$/ do |page_name|
  visit path_to(page_name)
end

Given /^I see "(.+)" link$/ do |link|
  page.should have_link(link)
end

#========
#= WHEN =
#========

When /^I follow "(.+)" link$/ do |link|
  click_link(link)
end

#========
#= THEN =
#========

Then /^I end up on page "(.+)"$/ do |page_name|
  path_to(page_name).should == current_path
end

When /^I click "(.+)" button$/ do |button|
  click_button(button)
end

Then /^I see text "(.+)"$/ do |text|
  page.should have_content(text)
end

Then /^I do NOT see text "(.+)"$/ do |text|
  page.should_not have_content(text)
end

Then /^I do NOT see "(.+)" link$/ do |link|
  page.should_not have_link(link)
end