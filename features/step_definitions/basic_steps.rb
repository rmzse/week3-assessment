Given(/^I am on the Home page$/) do
  visit '/'
end

Then(/^I should see "([^"]*)"$/) do |text|
  expect(page).to have_content text
end

When(/^I visit the name page for "([^"]*)"$/) do |name|
  visit "/name/#{:name}"
  # expect(page).to have_current_path("name/#{name}")
end

Then(/^I should create a new user with name "([^"]*)"$/) do |name|
  # expect(User.last.name).to eq name
  # expect(User.last.name).to_be name

  # This should work
  user = User.last
  # expect(user.name).to_be name
  expect(user.name).to eq name

  # binding.pry
  # user = User.create(name:params[:"#{name}"])
  # expect(user.name).to eq = name
  # # expect(user.name).to_be = name
  # # # @nameuser = User.create(name: name)
end
