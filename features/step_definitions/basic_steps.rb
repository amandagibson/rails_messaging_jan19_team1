  Given("following users exist") do |table|
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
  

  Given("I am logged in as {string}") do |name|
    user = User.find_by(name: name)
    login_as user, scope: :user
  end
  
  Given("I am visiting the {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  
  When("select {string} as {string}") do |string, string2|
    pending # Write code here that turns the phrase above into concrete actions
  end
 
  
 