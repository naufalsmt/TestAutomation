*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  edge
${URL}  https://mycareplandev.primehealth.ae:7072
${TEXT}     Dashboard

${email}    id:email
${pass}    id:password
${login_btn}    xpath://*[@id="root"]/div/div/div/div/div/div/form/div[3]/div/button

*** Test Cases ***
OpenURLTest
#    create webdriver    chrome      executable_path="C:\selenium\driver\chromedriver.exe"
    open browser    ${URL}  ${Browser}
    maximize browser window

LoginTest
    open browser    ${URL}  ${Browser}
    maximize browser window
    LoginToApplication

VerifyDashboard
    open browser    ${URL}  ${Browser}
    maximize browser window
    LoginToApplication
    sleep   5s
    VerifyElement

*** Keywords ***
LoginToApplication
    input text  ${email}    tech.ldap
    input text  ${pass}     Tech@1234
    click element   ${login_btn}

VerifyElement
    page should contain   ${TEXT}
