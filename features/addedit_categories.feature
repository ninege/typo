Feature: Create or edit Categories
  As a blog administrator
  I want to be able to create or edit the categories of my blog

  Background:
    Given the blog is set up
	
  Scenario: An admin can access categories pages.
  	Given I am logged into the admin panel as admin
	When I follow "Categories"
	Then I should see "Categories"
	Then I should see "Name"
	Then I should see "Keywords"
	Then I should see "Permalink"

  Scenario: An admin can create a new category
  	Given I am logged into the admin panel as admin
	When I follow "Categories"
    When I fill in "category_name" with "a new category"
    And I press "Save"
    Then I should be on the categories page
    And I should see "a new category"
   
  Scenario: An admin can edit a category
  	Given I am logged into the admin panel as admin
	When I follow "Categories"
	And I follow "General"
    And I fill in "category_name" with "an altered category"
    And I press "Save"
    Then I should be on the categories page
    And I should see "an altered category"
    And I should not see "General"
    

