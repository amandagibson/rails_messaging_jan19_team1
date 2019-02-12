Given ("I visit the page") do
    visit root_path 
  end
  
  When("I click on {string}") do |button|
    click_on button
  end
  
  Then("I should be redirected to sign up page") do
    expect(current_path).to eq new_user_registration_path
  end
  
  