@javascript
Feature: Doer accepts the given condition for the task
    As a Doer, 
    If I see the task to work on,
    I would like to be able to agree on the proposal.

    Background:
        Given the following users exist
        | email          |
        | pablo@test.com |

        Given the following task exists
        |title        |description                              |location    |budget| state |
        |My Task      |Really old table that needs refurnishing |Stockholm   |100   | open  |
        |My Task New  |Ugly new chair                           |Uppsala     |200   | open  |
        And I am logged in as 'pablo@test.com'
        When I am on the landing page
        And I click on 'My Task'
        Then I should be on 'My Task' page
        And I should see 'Open'

    Scenario: Doer accepts to work on task
        When I click on 'Let\'s do it'
        Then I should see 'Task poster has been notified - your interest in working on My Task has been submitted.'
        Then wait 1 second
        And the state of the task 'My Task' is 'Pending'
