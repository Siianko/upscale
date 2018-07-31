Feature: A visitor can create new task
    As a visitor,
    In order to get my furniture refurbished
    I would to be able create a new task

    Scenario: Create task
        When I am at the index page
        And I click on "New Task" link
        Then I should be on New Task page
        And I fill in "Title" with "My Task"
        And I fill in 'Description' with 'Really old table that needs refurnishing'
        And I fill in 'Budget' with '100'
        And I fill in 'Location' with 'Stockholm'
        And I click on 'Post Task'
        Then there should be a "New Task" in the database
        And I should see 'Task successfully created'