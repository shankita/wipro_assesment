**Variables***
#${Tracking}   //span[normalize-space()='Tracking']
${Tracking}   //button[@aria-label='Tracking']
${Accept_Cookies}  ACCEPT ALL COOKIES


${Tracking_number}  //input[@id='trackingModuleTrackingNum']


***Keywords***

fedex tracking page
    [Documentation]  This Test case is to verify tracking page
    [Arguments]  ${Tracking_ID} 
    #click element  ${Tracking}
    Run Keyword And Ignore Error  Click Button  ${Accept_Cookies}
    Wait Until Element Is Enabled  ${Tracking}
    Wait Until Element Is visible  ${Tracking}  timeout=10 
    sleep  3s
    click Button  ${Tracking}
    Input Text  ${Tracking_number}  ${Tracking_ID} 
    Click Button  Track  
    sleep  2s
    Page Should Contain  we are unable to retrieve your tracking results


Close All Browsers
    close browser