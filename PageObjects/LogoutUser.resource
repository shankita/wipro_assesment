***Variables***
${Logout}   //a[@title='SIGN OUT']

*** Keywords ***
    Logout
	[Documentation]  This Test case is to verify  logout page
	
    click link  ${Logout}