@javascript
Feature: Doer accepts the given condition for the task
    As a Doer,
    If I see the task to work on,
    I would like to be able to agree on the proposal.

    Background:
        Given the following users exist
            | email                 |
            | pablo@test.com        |
            | task-creator@test.com |

        Given the following task exists
            | title       | description                              | budget | user                  |
            | My Task     | Really old table that needs refurnishing | 100    | task-creator@test.com |
            | My Task New | Ugly new chair                           | 200    | task-creator@test.com |
        And I am logged in as 'pablo@test.com'
        When I am on the landing page
        And I click on 'My Task'
        Then I should be on 'My Task' page
        And I should see 'Open'

    Scenario: Doer accepts to work on task
        When I click on 'Let\'s do it'
        Then wait 1 second
        Then I should see 'Task poster has been notified - your interest in working on My Task has been submitted.'
        And the state of the task 'My Task' is 'Pending'
        And I would like an email to be sent to 'task-creator@test.com'
