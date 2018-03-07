Feature: Publish the post

  Check publish the post
  A authorized user
  Should be abble new post
   
   @todo-windows
   Scenario: Publish post
    Given Go on target site4
    When search the button login3
    And insert email and pass2
	And push button Login
	And search button add post
	And insert in textarea text
	And push button publish post
	And check status post
    Then logout