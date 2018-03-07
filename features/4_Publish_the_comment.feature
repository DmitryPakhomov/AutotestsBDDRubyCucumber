Feature: Publish the comment

  Check publish the comment
  A authorized user
  Should be abble new comment
   
   @todo-windows
   Scenario: Publish comment
    Given Go on target site5 
    When login site
	And check succefull login from comment
	And search button add comment
	And write comment
	And push button send
	And check status comment
	Then logout comment