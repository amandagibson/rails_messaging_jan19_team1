Feature: User is able to receive mail

 Background:
        Given I visit the site
        And following users exist
      | name        | email             | password | password_confirmation  |
      | john doe    | user@yahoo.com    | password | password               |

			And the following email exists

		Scenario: