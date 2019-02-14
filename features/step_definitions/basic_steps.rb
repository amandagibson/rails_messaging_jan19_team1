  Given ("I visit the page") do
    visit root_path
  end

  Given("following users exist") do |table|
    table.hashes.each do |user|
      FactoryBot.create(:user, user)
    end
  end

  When ("I visit the site") do
    visit root_path
  end

  When ("I click on {string} link") do |link|
    click_on link
  end

  When("I fill in {string} with {string}") do |field, input|
    fill_in field, with: input
  end

  When("I click on {string}") do |button|
    click_on button
	end
