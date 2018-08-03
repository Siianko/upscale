Feature: A visitor can create new task
    As a visitor,
    In order to get my furniture refurbished
    I need to be a registered user

    Background:
        Given the following users exist
        |email          |
        |pablo@test.com |
        
        And I am logged in as 'pablo@test.com'
        And I am on New Task page

    Scenario: Create task as a registered user [Happy path]
        When I fill in 'Title' with 'My Task'
        And I fill in 'Description' with 'Really old table that needs refurnishing'
        And I fill in 'Budget' with '100'
        And I fill in 'Location' with 'Stockholm'
        And I click on 'Post Task'
        Then there should be a Task titled 'My Task' in the database
        And I should see 'Task successfully created'

    Scenario: Create Task [Sad Path]
        When I fill in 'Title' with 'My Task'
        And I fill in 'Description' with ''
        And I fill in 'Budget' with '100'
        And I fill in 'Location' with 'Stockholm'
        And I click on 'Post Task'
        And I should see 'Your Task could not be created'

    Scenario: Visitor can NOT create a new Task
        Given that I am logged out
        When I am on the landing page
        And I click on 'New Task' link
        Then I should be sent to the Sign In page