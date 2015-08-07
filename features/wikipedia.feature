Feature: Search for an article
  In order to learn about Behat
  As a Behat developer
  I need to be able to locate information on Wikipedia

Scenario: Find the Behat article
  Given I am on the homepage
  When I enter "Behat" for "search"
  And I press "Go"
  Then I should see the heading "Behat"
  But I see the text "Behat is an ancient town"
  When I click "Behat (computer science)"
  Then I should see the heading "Behat (computer science)"
  And I should see the text "Behat is a behavior-driven development framework"
