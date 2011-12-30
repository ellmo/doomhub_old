#=========
#= GIVEN =
#=========

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