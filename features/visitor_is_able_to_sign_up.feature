Feature: Visitor is able to sign up
    As a User
    In order to access the mailboxer
    I want to be able to Sign Up

		Background:
				Given I visit the site
				And I click on "Sign up"

		Scenario: User can sign up
				When I fill in "Name" with "Boa"
				And I fill in "Email" with "dopekids@live.com"
				And I fill in "Password" with "Wrap009Do"
				And I fill in "Password confirmation" with "Wrap009Do"
				And I click on "Create"
				Then I should see "Welcome! You have signed up successfully."

		Scenario: User provides insuficient "details for password"
				When I fill in "Name" with "Boa"
				And I fill in "Email" with "dopekids@live.com"
				And I fill in "Password" with "Wrap009"
				And I fill in "Password confirmation" with "Wrap009"
				And I click on "Create"
				Then I should see "Password is too short (minimum is 8 characters)"

		Scenario: User provides "too many characters for name"
				When I fill in "Name" with "amandamaegibson"
				And I fill in "Email" with "dopekids@live.com"
				And I fill in "Password" with "Wrap009do"
				And I fill in "Password confirmation" with "Wrap009do"
				And I click on "Create"
				Then I should see "Name is too long (maximum is 10 characters)"