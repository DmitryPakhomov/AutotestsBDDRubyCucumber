Feature: Autorize registred user

  Check the login on stagemord.com
  A registred user
  Should be abble admin panel
  
  @todo-windows
  Scenario: Autorization
  
    Given Go on target site2
    When search the button login
    And insert email and pass
	And push button Login
	Then check succefful login and logout
  
  @todo-windows
  Scenario: Autorization negative
  
    Given Go on target site3
    When search the button login2
    And insert email and incorrect pass
	And push button login2
	Then check unsuccefull login and logout