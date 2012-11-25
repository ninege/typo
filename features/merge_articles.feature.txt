Feature: Merge Articles
  As a blog administrator
  In order to share my thoughts with the world
  I want to be able to merge articles in my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: View "merge articles" form
		Given I am on the edit article page with index 1
    Then I should see "Merge Articles"
