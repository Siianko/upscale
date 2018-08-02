Feature: Doer accepts the given condition for the task
    As a Doer, 
    If I see the task to work on,
    I would like to be able to agree on the proposal.

    Background:
        Given the following user is logged in
        | email          |
        | pablo@test.com |
        And I am logged in as 'pablo@test.com'
        And I am on the Task page
        And the state of the task is 'Open'

    Scenario: Doer accepts to work on task
        When I click on 'Let's do it'
        Then I should see 'Task poster has been notified - your interest has been submitted.'
        And the state of the task is 'Pending'
