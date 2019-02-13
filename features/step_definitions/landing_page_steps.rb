Given ("I visit the page") do
	visit root_path
end

When("I click on {string}") do |button|
	click_on button
end

Then("I should be redirected to sign up page") do
	expect(current_path).to eq new_user_registration_path
end

Then("I fill in {string} with {string}") do |field, content|
	fill_in field, with: content
end

Then("I should see {string}") do |string|
	expect(string).to eq "Welcome! You have signed up successfully."
end