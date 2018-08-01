Feature: A visitor can create new task
    As a visitor,
    In order to get my furniture refurbished
    I would to be able create a new task

    Background:
        Given I am on New Task page
    
    Scenario: Create task [Happy path]
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