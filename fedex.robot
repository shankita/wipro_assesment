*** Settings ***
Library			SeleniumLibrary


Suite Teardown    Close All Browsers
Suite Setup  Login to fedex home page



*** Variables ***
${BROWSER}		chrome
${HOME_PAGE}     https://www.fedex.com/en-gb/home.html
${English}  https://www.fedex.com/en-nl/home.html
${Accept_Cookies}  ACCEPT ALL COOKIES

*** Test Cases ***
fedex home page
    [Documentation]  This Test case is to verify Fedex
    [Tags]  Home   P2
    wait until page contains  fedex


fedex shipping page
    [Documentation]  This Test case is to verify shipping page
    [Tags]  shipping   P2
	# Open Browser			${HOME_PAGE} 	${BROWSER}
    wait until page contains  fedex

fedex tracking page
    [Documentation]  This Test case is to verify tracking page
    [Tags]  tracking   P2
	# Open Browser			${HOME_PAGE} 	${BROWSER}
    wait until page contains  fedex

fedex shipping page
    [Documentation]  This Test case is to verify Fedex
    [Tags]  Home   P2
	# Open Browser			${HOME_PAGE} 	${BROWSER}
    wait until page contains  fedex



*** Keywords ***
Login to fedex home page
	Open Browser			${HOME_PAGE} 	${BROWSER}
    Maximize Browser Window
    wait until page contains  fedex
    click link  ${English}
    Click Button  ${Accept_Cookies}
    sleep  2s


Close All Browsers
    close browser