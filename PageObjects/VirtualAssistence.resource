***Variables***
${Support}  //span[normalize-space()='Support']
${ContactUs}  //a[@title='CONTACT US']
${threerow}  //span[@id='js-burger__box']
${chatMsg}   //*[@id="nina-fedex"]/div/div[3]/div[2]/div[1]/textarea

${submitMsg}  //*[@id="nina-fedex"]/div/div[3]/div[2]/div[2]

*** Keywords ***
fedex virtual assistence page
    [Documentation]  This Test case is to verify shipping page
    [Tags]  assistance   P2
    [Arguments]  ${message} 
    Run Keyword And Ignore Error  Click element  ${threerow}

    click element  ${Support}
    click link  ${ContactUs}
    wait until page contains  Customer Support

    Input Text  ${chatMsg}  ${message} 
    click element  ${submitMsg}
