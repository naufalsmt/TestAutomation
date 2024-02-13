*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/locators.py
Resource  ../Resources/Login.robot

*** Keywords ***
Open my browser
    open browser  ${URL}  ${Browser}
    maximize browser window

Enter username
    [Arguments]  ${username}
    input text  ${email_id}    ${username}

Enter password
    [Arguments]  ${password}
    input text  ${password_id}     ${password}

Click login
    click button   ${login_btn}

close my browser
    close browser