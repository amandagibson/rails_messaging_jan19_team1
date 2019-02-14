Then("I should see {string}") do |content|
	expect(page).to have_content content
end

Then("I am logged into my account") do
	expect(current_path).to eq welcome_index
end