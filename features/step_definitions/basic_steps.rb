  Given("following user exists") do |table|
    table.hashes.each do |user|
      FactoryBot.create(:user, user)
    end
  end

  And ("I visit the site") do
    visit root_path
  end

  When("I fill in {string} with {string}") do |field, input|
    fill_in field, with: input
  end

  When("I click on {string}") do |button|
    click_on button
  end

	When("I am in my inbox") do
		expect(current_path).to eq mailbox_inbox
	end



