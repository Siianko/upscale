Feature: Display tasks on the landing page
    As a user
    In order to get people interested in my task
    I would like to have it displayed on the landing page

    Background:
        Given the following users exist
            | email          |
            | pablo@test.com |

        And the following task exists
            | title       | description                              | location  | budget | user           |
            | My Task     | Really old table that needs refurnishing | Stockholm | 100    | pablo@test.com |
            | My Task New | Ugly new chair                           | Uppsala   | 200    | pablo@test.com |


    Scenario: Viewing the task on the landing page
        When I am on the landing page
        Then I should see 'My Task'
        And I should see 'Stockholm'
        And I should see '100'


