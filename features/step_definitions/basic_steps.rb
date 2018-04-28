Given("I visit the site") do
  visit root_path
end

Given("We have the following categories:") do |table|
  table.hashes.each do |category|
    Category.create(name: category[:name])
  end
end

Given("We have the following dishes:") do |table|
  table.hashes.each do |product|
    category = Category.find_by(name: product[:category])
    Product.create(name: product[:name], description: product[:description], price: product[:price], category: category)
  end
end

Then("show me the page") do
  save_and_open_page
end

Given("I visit the admin site") do
  visit orders_path
end
