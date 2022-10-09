**Variables***

# ${Account}  //span[normalize-space()='Account']
${Account}  //button[@aria-label='Account']
${Open_account}  //a[normalize-space()='OPEN AN ACCOUNT']
${Open_acc}  /html/body/div[1]/div[1]/div/div/div/div/header/nav/div/div/div/div[4]/div/div[4]/ul/li/div/div/div[5]/div/a

${First_Name}  //input[@id='userId']
${Last_Name}  //input[@id='password']
${Country_Name}  //input[@id='userId']
${Comapny_Name}  //input[@id='password']
${Location}  //input[@id='password']
${Login_button}  //div[@class='fdx-u-mb--3 fdx-u-mt--7 fdx-u-ml--3 fdx-u-mr--3']//div[4]


${country}  India
${comapnyName}  FedEx
${address}  Amsterdam
***Keywords***

fedex new account page
    [Documentation]  This Test case is to verify new user account page
    [Arguments]  ${firstName}  ${LastName}  ${country}  ${comapnyName}  ${address}
	[Tags]  AccountCreation   P1
	click button  ${Account}
	click link  ${Open_account}
	Page Should Contain  Open a free account
