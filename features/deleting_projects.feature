Feature: Deleting projects
	In order to remove needless projects
	As a project manager
	I want to make them disappear

	Background:
		Given there is a project called "Textmate 2"
		And I am on the homepage

	Scenario:
		When I follow "Textmate 2"
		And I follow "Delete"
		Then I should see "Project has been deleted."
		Then I should not see "Textmate 2"
	