*** Settings ***
Library			SeleniumLibrary
Resource	  keyword.resource
Resource  PageObjects/HomePage.robot


Suite Teardown    Close All Browsers
Suite Setup  Login to fedex home page



*** Variables ***

${English}  https://www.fedex.com/en-nl/home.html
${Accept_Cookies}  ACCEPT ALL COOKIES
${Shipping}   //span[normalize-space()='Shipping']
${Ship_all_feature}  //a[@title='ship']
${Tracking}   //span[normalize-space()='Tracking']
${Tracking_number}  //input[@id='trackingModuleTrackingNum']
${Support}   //span[normalize-space()='Support']
${New_cust}  //a[@title='New Customer Centre']


*** Test Cases ***
fedex home page
    [Documentation]  This Test case is to verify Fedex
    [Tags]  Home   P2
    wait until page contains  fedex


fedex shipping page
    [Documentation]  This Test case is to verify shipping page
    [Tags]  shipping   P2
	# Open Browser			${HOME_PAGE} 	${BROWSER}
    click element  ${Shipping}
    click element  ${Ship_all_feature}
    wait until page contains  Enter your user ID and password to log in

Test Case for fedex tracking page 
    [Tags]  tracking   P2
    fedex tracking page   ${Tracking_ID} 


fedex support page
    [Documentation]  This Test case is to verify Fedex
    [Tags]  Support   P2
    wait until page contains  fedex
    click element  ${Support}
    Click element  ${New_cust} 
    wait until page contains  New Customer Centre

