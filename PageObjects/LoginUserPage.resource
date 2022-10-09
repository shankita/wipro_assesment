**Variables***

${Signup}  //span[@class='fxg-user-options__sign-in-text']
${Login_link}  //*[@id="global-login-wrapper"]/div/div/div/div[1]/div/a

${User_name}  //input[@id='userId']
${Password_text}  //input[@id='password']
${Login_button}  //div[@class='fdx-u-mb--3 fdx-u-mt--7 fdx-u-ml--3 fdx-u-mr--3']//div[4]
${Resetpassword_link}  //a[@id='requestCode-btn']

***Keywords***

Login 
    [Documentation]  This Test case is to verify valid user login page
    [Arguments]  ${user}  ${password} 

	click element  ${Signup}
	# sleep  5s
    click link  ${Login_link}
	# sleep  5s
    wait until page contains  Enter your user ID and password to log in
    Input Text  ${User_name}  ${user} 
	# sleep  5s
	Input Text  ${Password_text}  ${password}
	# sleep  5s
    Click element  ${Login_button}  
    # sleep  5s
    Page Should Contain  Manage your shipments



empty passowrd check
    [Documentation]  This Test case is to verify empty passowrd
    [Arguments]  ${user} 
	
	click element  ${Signup}
	# sleep  5s
    click link  ${Login_link}
	# sleep  5s
    wait until page contains  Enter your user ID and password to log in  timeout=10s
    Input Text  ${User_name}  ${user} 
    Wait Until Page Contains Element  ${Login_button} 
    Click element  ${Login_button}  
    # sleep  2s
    Page Should Contain  Both user ID and password are required to log in.


reset password
    [Documentation]  This Test case is to verify reset password
    log  This Test is to verify reset password
		
	# click element  ${Resetpassword_link}
    # Page Should Not Contain  Forgot your password or user ID?