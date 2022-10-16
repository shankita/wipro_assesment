*** Settings ***
Library			SeleniumLibrary
Resource  PageObjects/TrackingPage.resource
Resource  PageObjects/HomePage.robot
Resource  PageObjects/SupportPage.resource
Resource  PageObjects/ShippingPage.resource
Resource  PageObjects/LoginUserPage.resource
Resource  PageObjects/CreateUserPage.resource
Resource  PageObjects/AccountPage.resource
Resource  PageObjects/VirtualAssistence.resource

#Suite Teardown    Close All Browsers
#Suite Setup  Open to home page

Test Teardown    Close All Browsers
Test Setup  Open home page

Test Timeout       ${timeout}


*** Variables ***


*** Test Cases ***
Test Case for fedex home page
    [Documentation]  This Test case is to verify Fedex
    [Tags]  Home   P1
    wait until page contains  fedex

	
Test case for fedex shipping page
    [Documentation]  This Test case is to verify shipping page
    [Tags]  shipping   P1  Jenkins
    fedex shipping page
    
Test Case for fedex tracking page 
    [Documentation]  This Test case is to verify tracking page
    [Tags]  tracking   P1
    fedex tracking page   ${Tracking_ID} 


Test Case for fedex Support page 
    [Documentation]  This Test case is to verify Support page
    [Tags]  support   P1
    fedex support page


Test Case for fedex Login page 
     [Documentation]  This Test case is to verify Login page
     [Tags]  SignIn  P1
     Login  ${user}  ${password} 
     wait until page contains  fedex
     #Logout

	
Test Case for empty password page check
    [Documentation]  This Test case is to verify empty password	page
    [Tags]  empty password	P1
    empty passowrd check  ${user}


Test Case for fedex new account page 
    [Documentation]  This Test case is to verify new account page
    [Tags]  new account	P1
    fedex new account page  ${firstName}  ${LastName}  ${country}  ${comapnyName}  ${address}
	

Test Case for reset password  
    [Documentation]  This Test case is to verify reset password	
    [Tags]  reset password	P1
    reset password 
	
	
Test Case for fedex create user page 
    [Documentation]  This Test case is to verify create user page
    [Tags]  create user   P1
    fedex create user page 


Test Case for fedex virtual assistence page 
    [Documentation]  This Test case is to verify virtual assistence  page
    [Tags]  virtualassistence  P1
    fedex virtual assistence page  ${message}
	
	
#End of test case