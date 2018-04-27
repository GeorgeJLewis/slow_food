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

Then("I should see orders") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("be able to modify them") do
  pending # Write code here that turns the phrase above into concrete actions
end
