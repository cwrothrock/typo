Feature: Create Category
  As a blog administrator
  In order to organize my thoughts for the world
  I want to be able to add categories to my blog
  
  Background: 
    Given the blog is set up
    And I am logged into the admin panel
    
  Scenario: Successfully create and edit categories
    Given I am on the new categories page
    When I fill in "category_name" with "foobar_initial"
    And I fill in "category_keywords" with "words_initial"
    And I fill in "category_permalink" with "link_initial"
    And I fill in "category_description" with "fluff_initial"
    And I press "Save"
    Then I should be on the new categories page
    Then I should see "foobar_initial"
    Then I should see "words_initial"
    Then I should see "link_initial"
    Then I should see "fluff_initial"
    
    Then I follow "foobar"
    When I fill in "category_name" with "foobar_edit"
    And I fill in "category_keywords" with "words_edit"
    And I fill in "category_permalink" with "link_edit"
    And I fill in "category_description" with "fluff_edit"
    And I press "Save"
    Then I should be on the new categories page
    Then I should see "foobar_edit"
    Then I should not see "foobar_initial"
    Then I should see "words_edit"
    Then I should not see "words_initial"
    Then I should see "link_edit"
    Then I should not see "link_initial"
    Then I should see "fluff_edit"
    Then I should not see "fluff_initial"