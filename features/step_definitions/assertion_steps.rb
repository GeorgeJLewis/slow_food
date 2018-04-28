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

<<<<<<< HEAD
Then("I should see orders") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("be able to modify them") do
  pending # Write code here that turns the phrase above into concrete actions
end
=======
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
  fill_in field, with: text
end

Given("I select {string}") do |category|
  select(category, from: 'product[category_id]')
end

Given("I click {string}") do |button|
  click_link_or_button button
end


>>>>>>> bcf1a7053db4ec492b952b2d0f66482408f7bf4e
