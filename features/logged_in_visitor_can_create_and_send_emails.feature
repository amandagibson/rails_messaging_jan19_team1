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
         When I click "Compose"
         And select "Olivia" as "Recipient"
         And fill in "Subject" with "Hello"
         And fill in "Message" with "What's up?"
         And click "Send Message"
         Then I should see "Your message was successfully sent!"
