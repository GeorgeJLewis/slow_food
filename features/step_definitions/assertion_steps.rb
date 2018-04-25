Then("I should see {string}") do |expected_content|
  expect(page).to have_content expected_content
end

Then("I should see a {string}") do |text|
  expect(page).to have_content text
end

Then("I should see dish name {string}") do |dish|
  expect(page).to have_content dish
end

Then("I should see dish description {string}") do |description|
  expect(page).to have_content description
end

# Given("We have a dish called {string} with description {string} and price {string}") do |name, description, price|
#   Product.create(name: name, description: description, price: price)
# end

# Given("We have categorise called {string} and {string} and {string}") do |starters, main_courses, desserts|
#   Category.create(starters: starters, main_courses: main_courses, desserts: desserts)
# end

Given("We have the following categories:") do |table|
  table.hashes.each do |category|
    Category.create(name: category[:name])
  end
end

Given("We have the following dishes:") do |table|
  table.hashes.each do |products|
    Product.create(name: products[:name], description: products[:description], price: products[:price])
  end
end

Then("show me the page") do
  save_and_open_page
end
