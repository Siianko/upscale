Feature: User email notifications
    As a Doer, 
    In order to notify the user that I would like to execute the task, 
    I should be able to send an email notification. 

    PT https://www.pivotaltracker.com/story/show/159516636

    Background: 
        Given the following task exists
        |title     |description                              |location    |budget|state |
        |My Task   |Really old table that needs refurnishing |Stockholm   |100   |open  |

        Given the following users exist
        | email          |
        | pablo@test.com |
        | karin@nice.com |
        And I should be on 'My Task' page

    Scenario: User receives an email notification
        When I click on 'Let's do it'
        Then I send a notification to the user
        And the state of the task is changed to 'Pending'
        
        





