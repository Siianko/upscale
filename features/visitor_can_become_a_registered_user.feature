Feature: Visitor can become a registered user
    As Visitor,
    In order to be able to create tasks,
    I need to become a registered user. 

    Background: 
        Given the following user exists: 
        | username  | email            | password    | password_confirmation |
        | Pablo     | pablo@test.com   | my-password | my-password           |

        And I am on the signup page 
    
    Scenario: Visitor registration [Happy path]
        When I fill in 'Name' with 'Pablo'
        And I fill in 'Email' with 'pablo@test.com'
        And I fill in 'Password' with 'my-password'
        And I fill in 'Password Confirmation' with 'my-password'
        And I click on 'Sign up'
        Then I should see 'Your account was successfully created'
        And I should be sent to 'customer page'

    