**Variables***
#${Tracking}   //span[normalize-space()='Tracking']
${Tracking}   //button[@aria-label='Tracking']


${Tracking_number}  //input[@id='trackingModuleTrackingNum']


***Keywords***

fedex tracking page
    [Documentation]  This Test case is to verify tracking page
    [Arguments]  ${Tracking_ID} 
    #click element  ${Tracking}
    Wait Until Element Is Enabled  ${Tracking}
    click Button  ${Tracking}
    Input Text  ${Tracking_number}  ${Tracking_ID} 
    Click Button  Track  
    sleep  2s
    Page Should Contain  we are unable to retrieve your tracking results


Close All Browsers
    close browser