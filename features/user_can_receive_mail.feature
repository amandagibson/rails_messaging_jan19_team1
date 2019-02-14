Feature: User is able to receive mail

Background:
        Given I visit the site
        And following user exists
|   name        |   email              |   password    |   password_confirmation    |
|   john doe    |   johndoe@mail.com   |   password    |   password                 |

Scenario: User can receive mail
        When I am in my inbox
        Then I should see all my messages 