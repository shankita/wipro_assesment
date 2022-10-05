*** Variables ***

${BROWSER}		chrome
${HOME_PAGE}     https://www.fedex.com/en-gb/home.html



*** Keywords ***
Login to fedex home page
	Open Browser			${HOME_PAGE} 	${BROWSER}
    Maximize Browser Window
    wait until page contains  fedex
    click link  ${English}
    Click Button  ${Accept_Cookies}
    sleep  2s
