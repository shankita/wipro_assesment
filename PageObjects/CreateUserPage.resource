**Variables***

${Signup}  //span[@class='fxg-user-options__sign-in-text']
${Login_link}  //*[@id="global-login-wrapper"]/div/div/div/div[1]/div/a

${User_name}  //input[@id='userId']
${Password_text}  //input[@id='password']
${Login_button}  //div[@class='fdx-u-mb--3 fdx-u-mt--7 fdx-u-ml--3 fdx-u-mr--3']//div[4]



***Keywords***

fedex create user page
    [Documentation]  This Test case is to verify valid user login page
    #[Arguments]  ${user}  ${password}  ${secQues}  $(secAns)  ${firstName}  ${LastName}  ${country}  ${comapnyName}  ${address}
	
	
	click element  ${Signup}
