Feature: Registration

  Check the registration on stagemord.com
  A unregistred user
  Should be abble to registration

  @todo-windows
  Scenario: Registration

    Given Go on target site
    When Search the button Registration
    And insert email
	And insert pass
	And insert teamname
	And push button Registration
	Then check succefful registration and logout