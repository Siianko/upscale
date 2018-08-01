Feature: Visitor can become a registered user
    As Visitor,
    In order to be able to create tasks,
    I need to become a registered user. 

    Background: 
        Given I am on the signup page 
    
    Scenario: Visitor registration [Happy path]
        When I fill in 'Name' with 'Pablo'
        And I fill in 'Email' with 'pablo@test.com'
        And I fill in 'Password' with 'my-password'
        And I fill in 'Password confirmation' with 'my-password'
        And I click on 'Sign up'
        Then I should see 'Welcome! You have signed up successfully'
        And I should be sent to 'customer page'

    