require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome

email = "#{Time.now.strftime("%s%m%d%H%M")}@gmail.com"
post = "#{rand(1000)}+The best QA is Dmitry"
comment = "#{rand(1000)}+The best comment"

################## registration #######################
Given(/^Go on target site$/) do
  driver.navigate.to "https://********.com"
end

When(/^Search the button Registration$/) do
   driver.find_element(:partial_link_text, 'Sign up').click
end

And(/^insert email$/) do
   driver.find_element(:id, 'inputEmail').send_keys(email)
   print email
end

And(/^insert pass$/) do
   driver.find_element(:id, 'inputPassword').send_keys("Qwerty123123")
   driver.find_element(:id, 'inputConfirmPassword').send_keys("Qwerty123123")
end

And(/^insert teamname$/) do
   driver.find_element(:id, 'inputCompany').send_keys("TeamtestQA")
end


And(/^push button Registration$/) do
   wait = Selenium::WebDriver::Wait.new(:timeout => 5) # seconds
   #begin
	element = wait.until { driver.find_element(:css, 'body > div:nth-child(1) > div:nth-child(2) > div > div > div > div > div > form > button') }
   # expect(element.text).to eq('Регистрация')
   #end	
    driver.find_element(:css, 'body > div:nth-child(1) > div:nth-child(2) > div > div > div > div > div > form > button').click
end

Then(/^check succefful registration and logout$/) do
   wait = Selenium::WebDriver::Wait.new(:timeout => 10) # seconds
   element = wait.until { driver.find_element(:css, 'body > div:nth-child(1) > div:nth-child(1) > div > div.pull-right.chusna > div.block-mobile-toggle > div.dropdown.dropdown-ava.online > a > avatar > div > span') }
   driver.find_element(:css, 'body > div:nth-child(1) > div:nth-child(1) > div > div.pull-right.chusna > div.block-mobile-toggle > div.dropdown.dropdown-ava.online > a > avatar > div > span').click
   
   element = wait.until { driver.find_element(:css, 'body > div:nth-child(1) > div:nth-child(1) > div > div.pull-right.chusna > div.block-mobile-toggle.mopen > div.dropdown.dropdown-ava.online.open > ul > li:nth-child(2) > a') }
   driver.find_element(:css, 'body > div:nth-child(1) > div:nth-child(1) > div > div.pull-right.chusna > div.block-mobile-toggle.mopen > div.dropdown.dropdown-ava.online.open > ul > li:nth-child(2) > a').click
end



################## positive login #######################

Given(/^Go on target site2$/) do
  driver.navigate.to "https://*******.com"
end

When(/^search the button login$/) do
   driver.find_element(:partial_link_text, 'Log in').click
end

And(/^insert email and pass$/) do
   driver.find_element(:id, 'inputEmail').send_keys(email)
   driver.find_element(:id, 'inputPassword').send_keys("Qwerty123123")
end

And(/^push button Login$/) do
   driver.find_element(:css, 'body > div:nth-child(1) > div:nth-child(2) > div > div > div > div > div > form > button').click
end

Then(/^check succefful login and logout$/) do
   sleep 3
   wait = Selenium::WebDriver::Wait.new(:timeout => 10) # seconds
   element = wait.until { driver.find_element(:css, 'body > div:nth-child(1) > div:nth-child(1) > div > div.pull-right.chusna > div.block-mobile-toggle > div.dropdown.dropdown-ava.online > a > avatar > div > span') }
   element.click
   sleep 3
   element = wait.until { driver.find_element(:css, 'body > div:nth-child(1) > div:nth-child(1) > div > div.pull-right.chusna > div.block-mobile-toggle.mopen > div.dropdown.dropdown-ava.online.open > ul > li:nth-child(2) > a') }
   element.click
end

############# negative login ##########################

Given(/^Go on target site3$/) do
  driver.navigate.to "https://******.com"
end

When(/^search the button login2$/) do
   driver.find_element(:partial_link_text, 'Log in').click
end

And(/^insert email and incorrect pass$/) do
  driver.find_element(:id, 'inputEmail').send_keys(email)
   driver.find_element(:id, 'inputPassword').send_keys("Qwerty123123error")
end

And(/^push button login2$/) do
   driver.find_element(:css, 'body > div:nth-child(1) > div:nth-child(2) > div > div > div > div > div > form > button').click
end

Then(/^check unsuccefull login and logout$/) do
   wait = Selenium::WebDriver::Wait.new(:timeout => 15) # seconds
   element = wait.until { driver.find_element(:css, 'body > div:nth-child(1) > div:nth-child(2) > div > div > div > div > div > form > div:nth-child(3) > div') }
   ##driver.find_element(:css, 'body > div:nth-child(1) > div:nth-child(2) > div > div > div > div > div > form > div:nth-child(3) > div')
end


############# add new post ##########################
Given(/^Go on target site4$/) do
  driver.navigate.to "https://*******.com"
end

When(/^search the button login3$/) do
   driver.find_element(:partial_link_text, 'Log in').click
end

And(/^insert email and pass2$/) do
   driver.find_element(:id, 'inputEmail').send_keys(email)
   driver.find_element(:id, 'inputPassword').send_keys("Qwerty123123")
end

And(/^push button login$/) do
   driver.find_element(:css, 'body > div:nth-child(1) > div:nth-child(2) > div > div > div > div > div > form > button').click
end

And(/^check succefull login$/) do
   wait = Selenium::WebDriver::Wait.new(:timeout => 10) # seconds
   element = wait.until { driver.find_element(:css, 'body > div:nth-child(1) > div:nth-child(1) > div > div.pull-right.chusna > div.block-mobile-toggle > div.dropdown.dropdown-ava.online > a > avatar > div > span') }
end

And(/^search button add post$/) do
   sleep 3
   #wait = Selenium::WebDriver::Wait.new(:timeout => 10) # seconds
   #element = wait.until { driver.find_element(:css, 'body > div:nth-child(1) > div:nth-child(2) > div > div > div > div.col-md-3 > div > div > #div.hidden-xs.hidden-sm > div.site-left-menu-button > a') }
   #element.click
   driver.navigate.to "https://*******.com/create-story"
end

And(/^insert in textarea text$/) do
   sleep 5
   driver.find_element(:css, 'body > div:nth-child(1) > div:nth-child(2) > div > div.container > div > div > div > form > div:nth-child(1) > input').send_keys(post)
    
   dropdown_list = driver.find_element(:css, 'body > div:nth-child(1) > div:nth-child(2) > div > div.container > div > div > div > form > div.row > div > div > select')

   #Get all the options from the dropdown
   options = dropdown_list.find_elements(tag_name: 'option')

   #Find the dropdown value by text
   options.each { |option| option.click if option.text == 'Events'}  
   driver.find_element(:id, 'redactor-uuid-0').send_keys(post)  
   driver.find_element(:id, 'redactor-uuid-1').send_keys(post)
   sleep 4
end

And(/^push button publish post$/) do
   sleep 4
   wait = Selenium::WebDriver::Wait.new(:timeout => 10) # seconds
   wait.until { driver.find_element(:xpath => '/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/button')}
   sleep 4
   element = driver.find_element(:xpath => '/html/body/div[1]/div[2]/div/div[2]/div/div/div/form/button')
   element.click
   sleep 4
end

And(/^check status post$/) do
   wait = Selenium::WebDriver::Wait.new(:timeout => 10) # seconds
   element = wait.until { driver.find_element(:tag_name=>"Body").text.include? post }
end

Then(/^logout$/) do
   driver.navigate.to "https://*******.com"
   
   sleep 3
   wait = Selenium::WebDriver::Wait.new(:timeout => 10) # seconds
   element = wait.until { driver.find_element(:css, 'body > div:nth-child(1) > div:nth-child(1) > div > div.pull-right.chusna > div.block-mobile-toggle > div.dropdown.dropdown-ava.online > a > avatar > div > span') }
   element.click
   element = wait.until { driver.find_element(:css, 'body > div:nth-child(1) > div:nth-child(1) > div > div.pull-right.chusna > div.block-mobile-toggle.mopen > div.dropdown.dropdown-ava.online.open > ul > li:nth-child(2) > a') }
   element.click
end

######################################## post the comment ##################################

Given(/^Go on target site5$/) do
  driver.navigate.to "https://*******.com"
end

When(/^login site$/) do
   driver.find_element(:partial_link_text, 'Log in').click
   driver.find_element(:id, 'inputEmail').send_keys(email)
   driver.find_element(:id, 'inputPassword').send_keys("Qwerty123123")
   driver.find_element(:css, 'body > div:nth-child(1) > div:nth-child(2) > div > div > div > div > div > form > button').click
end

And(/^check succefull login from comment$/) do
   
   wait = Selenium::WebDriver::Wait.new(:timeout => 25) # seconds
   element = wait.until { driver.find_element(:css, 'body > div:nth-child(1) > div:nth-child(1) > div > div.pull-right.chusna > div.block-mobile-toggle > div.dropdown.dropdown-ava.online > a > avatar > div > span') }
end

And(/^search button add comment$/) do
   driver.navigate.to "https://*******.com/my-stories"
   sleep 2
   wait = Selenium::WebDriver::Wait.new(:timeout => 10) # seconds
   element = wait.until { driver.find_element(:partial_link_text, post)}
   sleep 2
   element.click
end

And(/^write comment$/) do
   sleep 2
   wait = Selenium::WebDriver::Wait.new(:timeout => 10) # seconds
   element = wait.until { driver.find_element(:css, 'body > div:nth-child(1) > div:nth-child(2) > div > div > div > div:nth-child(4) > div > div > div:nth-child(2) > div:nth-child(1) > textarea')}
   element.send_keys(comment)
end

And(/^push button send$/) do
   sleep 2
   wait = Selenium::WebDriver::Wait.new(:timeout => 10) # seconds
   wait.until { driver.find_element(:css, 'body > div:nth-child(1) > div:nth-child(2) > div > div > div > div:nth-child(4) > div > div > div:nth-child(2) > div:nth-child(2) > div > button').displayed? }
   element = driver.find_element(:css, 'body > div:nth-child(1) > div:nth-child(2) > div > div > div > div:nth-child(4) > div > div > div:nth-child(2) > div:nth-child(2) > div > button')
   sleep 2
   element.click
end

And(/^check status comment$/) do
   sleep 4
   wait = Selenium::WebDriver::Wait.new(:timeout => 10) # seconds
   element = wait.until { driver.find_element(:tag_name=>"Body").text.include? comment }
end

Then(/^logout comment$/) do
   driver.navigate.to "https://*******.com"
   
   sleep 1
   wait = Selenium::WebDriver::Wait.new(:timeout => 10) # seconds
   element = wait.until { driver.find_element(:css, 'body > div:nth-child(1) > div:nth-child(1) > div > div.pull-right.chusna > div.block-mobile-toggle > div.dropdown.dropdown-ava.online > a > avatar > div > span') }
   element.click
   element = wait.until { driver.find_element(:css, 'body > div:nth-child(1) > div:nth-child(1) > div > div.pull-right.chusna > div.block-mobile-toggle.mopen > div.dropdown.dropdown-ava.online.open > ul > li:nth-child(2) > a') }
   element.click
   
   printf "Best practice with Dmitry Pakhomov)"
end