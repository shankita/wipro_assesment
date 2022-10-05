***Variables***
${Shipping}   //span[normalize-space()='Shipping']
${Ship_all_feature}  //a[@title='ship']

*** Keywords ***
fedex shipping page
    [Documentation]  This Test case is to verify shipping page
    [Tags]  shipping   P2
	# Open Browser			${HOME_PAGE} 	${BROWSER}
    click element  ${Shipping}
    click element  ${Ship_all_feature}
    wait until page contains  Enter your user ID and password to log in