***Variables***
${Shipping}   //span[normalize-space()='Shipping']
${Ship_all_feature}  //a[@title='ship']
${threerow}  //span[@id='js-burger__box']

*** Keywords ***
fedex shipping page
    [Documentation]  This Test case is to verify shipping page
    [Tags]  shipping   P2
    
    Run Keyword And Ignore Error  Click element  ${threerow}
    click element  ${Shipping}
    click element  ${Ship_all_feature}

    wait until page contains  Enter your user ID and password to log in

