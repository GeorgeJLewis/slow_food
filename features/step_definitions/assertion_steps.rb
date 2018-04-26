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

Then("I should see  {string}") do |my_order|
  expect(page).to have_content my_order
end

Then("I should be directed to {string} page") do |click_button|
  expect(page).to have_content click_button
end