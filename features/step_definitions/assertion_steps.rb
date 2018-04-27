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

Given("I am on product page") do
  visit products_path
end

Given("I click {string} button for {string}") do |button, product_name|
  product = Product.find_by(name: product_name)
  within ("#product_#{product.id}") do
    click_link_or_button button
  end
end

Given("I fill in {string} with {string}") do |field, text|
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I select {string}") do |category|
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I click {string}") do |button|
  pending # Write code here that turns the phrase above into concrete actions
end
