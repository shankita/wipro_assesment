***Variables***
${Shipping}   //span[normalize-space()='Shipping']


*** Keywords ***
fedex virtual assistence page
    [Documentation]  This Test case is to verify shipping page
    [Tags]  shipping   P2
	[Arguments]  ${messages} 
    click element  ${Shipping}
