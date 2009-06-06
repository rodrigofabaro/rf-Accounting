Given /^the following users:$/ do |users|
  User.create!(users.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) user$/ do |pos|
  visit users_url
  within("table > tr:nth-child(#{pos.to_i+1})") do
    click_link "Apagar"
  end
end

Then /^I should see the following users:$/ do |users|
  users.rows.each_with_index do |row, i|
    row.each_with_index do |cell, j|
      response.should have_selector("table > tr:nth-child(#{i+2}) > td:nth-child(#{j+1})") { |td|
        td.inner_text.should == cell
      }
    end
  end
end
Then /^I should have (\d+) users$/ do |count|
  User.count.should == count.to_i
end

Given /^I have users called (.+)$/ do |names|
  names.split(", ") do |name|
    User.create!(:name => name, :login => name, :email => "#{name}@test.com", :password => "Pass")
  end
end

