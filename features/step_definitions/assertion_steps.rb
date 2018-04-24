Then("I should see {string}") do |expected_content|
  expect(page).to have_content expected_content
end

Then("I should see a {string}") do |menu|
  expect(page).to have_content menu
end

Given("I visit the site and there is a dish {string}") do |lasagna|
  expect(page).to have_content lasagna
end

Then("I should see dish name {string}") do |pasta|
  expect(page).to have_content pasta
end

Then("I should see dish description {string}") do |price|
  expect(page).to have_content price
end

Given("We have a dish called {string} with description {string} and price {string}") do |name, description, price|
  Product.create(name: name, description: description, price: price)
end
