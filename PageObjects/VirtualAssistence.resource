***Variables***
${Shipping}   //span[normalize-space()='Shipping']
${threerow}  //span[@id='js-burger__box']


*** Keywords ***
fedex virtual assistence page
    [Documentation]  This Test case is to verify shipping page
    [Tags]  assistance   P2
    Run Keyword And Ignore Error  Click element  ${threerow}

    click element  ${Shipping}
