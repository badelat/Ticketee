Feature: Editing projects
	In order to update project information
	As a user
	I want to be able to do that through the interface

	Background:
		Given there is a project called "Textmate 2"
		And I am on the homepage
		When I follow "Textmate 2"
		And I follow "Edit"

	Scenario:
		And I fill in "Project name" with "Textmate 2 beta"
		And I press "Update Project"
		Then I should see "Project has been updated."
		Then I should be on the project page for "Textmate 2 beta"
	
	Scenario:
		And I fill in "Project name" with ""
		And I press "Update Project"
		Then I should see "Project has not been updated."
