#=========
#= GIVEN =
#=========

Given /^there are following users in database$/ do |table|
  table.hashes.each do |hash|
    Factory(:user, hash)
  end
end

#========
#= WHEN =
#========

When /^I fill the login form with$/ do |table|
  table.hashes.each_with_index do |hash, index|
    fill_in("user_login", :with => hash[:user_login] )
    fill_in("user_password", :with => hash[:user_password])
  end
end

#========
#= THEN =
#========

Then /^I see login form$/ do
  page.should have_selector("form#user_new")
end