Feature: User is able to receive mail

Background:
        Given I visit the site
        And following users exists
|   name        |   email              |   password    |   password_confirmation    |
|   User        |   user@yahoo.com     |   11111111    |   11111111                 |
|   Nici        |   niciputter@yahoo.com   |   11111111    |   11111111             |
And I am logged in as "User"
And I am visiting the "Inbox"

				And the following email exists
| sender  			 | receiver | body          | subject       |
| User					 | Nici     | some message  | some subject  |

Scenario: User can receive mail
        Then I should see my message
				When I click on "read message"
				Then I should see my message
