Feature: Logged in visitor can create and send emails 

   As a User
   In order to communicate with other people
   I would like to be able to write and send emails

      Background:
         Given following users exist
            | name        | email             | password | password_confirmation  |
            | Viktor      | viktor@mail.com   | password | password               |
            | Olivia      | olivia@mail.com   | password | password               |
         And I am logged in as "Viktor"
         And I am visiting the "Inbox"                      
            
      Scenario: User can create and send email
         When I click on "Compose"
         And select "Olivia" as "Recipient"
         And I fill in "Subject" with "Hello"
         And I fill in "Message" with "What's up?"
         And I click on "Send Message"
         Then I should see "Your message was successfully sent!"
