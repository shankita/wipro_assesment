*** Variables ***

${BROWSER}		chrome
${HOME_PAGE}     https://www.fedex.com/en-gb/home.html
${English}  https://www.fedex.com/en-nl/home.html
${Accept_Cookies}  ACCEPT ALL COOKIES

${Signintext}  //span[@class='fxg-user-options__sign-in-text']

*** Keywords ***
Open to home page
	Open Browser			${HOME_PAGE} 	${BROWSER}
    Maximize Browser Window
    wait until page contains  fedex
    click link  ${English}
    Run Keyword And Ignore Error  Click Button  ${Accept_Cookies}
    sleep  2s

Logout 
    [Documentation]  This Test case is to verify logout page
    click button  ${Signintext}
	click element  ${Logout}
	