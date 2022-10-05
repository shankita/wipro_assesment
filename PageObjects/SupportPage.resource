***Variables***
${Support}  //button[@aria-label='Support']
${New_cust}  //a[normalize-space()='New Customer Centre']

# ${New_cust}  //a[@title='New Customer Centre']
# ${Support}   //span[normalize-space()='Support']

***Keywords***
fedex support page
    [Documentation]  This Test case is to verify Fedex
    [Tags]  Support   P2
    wait until page contains  fedex
    # click element  ${Support}
    click button  ${Support}
    Click element  ${New_cust} 
    wait until page contains  New Customer Centre
