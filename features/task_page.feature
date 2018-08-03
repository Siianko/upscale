Feature: Task Page
    As a user
    In order to get more information about an interesting task
    I would like to see a task page with more detailed information

    Background:
        Given the following users exist
            | email          |
            | pablo@test.com |

        And the following task exists
            | title       | description                              | location  | budget | user           |
            | My Task     | Really old table that needs refurnishing | Stockholm | 100    | pablo@test.com |
            | My Task New | Ugly new chair                           | Uppsala   | 200    | pablo@test.com |

    Scenario:
        When I am on the landing page
        And I click on 'My Task'
        Then I should be on 'My Task' page
        And I should see 'My Task'
        And I should see 'Really old table that needs refurnishing'
        And I should see 'Stockholm'
        And I should see '100'
        And I should see "Let's do it"
        And I should see 'Send Counter offer'