Feature: User is able to receive email
		As a User
		In order to let other people communicate with me
		I would like to be able to receive emails.

Scenario: User can receive mail

				Given I am logged into my account
#				When I click on "Inbox"
				Then I should see my messages.
