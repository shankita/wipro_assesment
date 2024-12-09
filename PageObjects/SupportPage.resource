***Variables***
#${Support}  //button[@aria-label='Support']
${Support}  //span[normalize-space()='Support']
${New_cust}  //a[normalize-space()='New Customer Centre']
${threerow}  //span[@id='js-burger__box']

# ${New_cust}  //a[@title='New Customer Centre']
# ${Support}   //span[normalize-space()='Support']

***Keywords***
fedex support page
    [Documentation]  This Test case is to verify Fedex
    wait until page contains  fedex
    # click element  ${Support}
    Run Keyword And Ignore Error  Click element  ${threerow}
    click element  ${Support}
    Click element  ${New_cust} 
    wait until page contains  New Customer Centre
