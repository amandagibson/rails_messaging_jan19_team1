Feature: User is able to receive mail

Background:
        Given I visit the site
				When I am in my inbox
        And following user exists
|   name        |   email              |   password    |   password_confirmation    |
|   john doe    |   johndoe@mail.com   |   password    |   password                 |

Scenario: User can receive mail
        Then I should see all my messages
				When I click on "read message"
				Then I should see my message
