Feature: User can login using Facebook

    As a user
    In order to have a more convenient login
    I would like to be able to login with Facebook

    PT: https://www.pivotaltracker.com/story/show/159425944


    Scenario: Visitor clicks on "Login with Facebook" and gets authenticated
        Given I am at the index page
        And I click on "Log in with Facebook"
        Then I should be on the Landing page
        And I should see "Successfully authenticated from Facebook account"