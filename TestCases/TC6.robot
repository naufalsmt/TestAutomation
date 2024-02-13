*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/DataDriven.robot
Library  DataDriver     ../TestData/loginDetails.xlsx


Suite Setup     Open my browser
Suite Teardown  Close my browser
Test Template   Invalid login

*** Test Cases ***
LoginTestExcelData using ${username} & ${password}

*** Keywords ***
Invalid login
    [Arguments]  ${username}    ${password}
    Enter username   ${username}
    Enter password   ${password}
    Click login
    Error message should be visible
