***Keywords***

fedex tracking page
    [Documentation]  This Test case is to verify tracking page
    [Arguments]  ${Tracking_ID} 
    click element  ${Tracking}
    Input Text  ${Tracking_number}  ${Tracking_ID} 
    Click Button  Track  
    sleep  2s
    Page Should Contain  we are unable to retrieve your tracking results



Close All Browsers
    close browser