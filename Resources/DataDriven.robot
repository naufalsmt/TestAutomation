*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}      https://mycareplandev.primehealth.ae:7072
${Browser}  edge
${log_btn}  xpath://*[@id='root']/div/div/div/div/div/div/form/div[3]/div/button

*** Keywords ***
Open my browser
    open browser  ${URL}  ${Browser}
    maximize browser window

close my browser
    close all browsers

Enter username
    [Arguments]  ${username}
    input text  id:email    ${username}

Enter password
    [Arguments]  ${password}
    input text  id:password     ${password}

Click login
    click button   ${log_btn}
    sleep   1s

Error message should be visible
    page should contain     Invalid Credentials!

Dashboard page should visible
    page should contain     Dashbaord



