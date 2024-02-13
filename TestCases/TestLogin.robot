*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/loginkeywords.robot
Resource  ../Resources/Login.robot

*** Test Cases ***
Login Test
    Open my browser
    Enter username      ${user_name}
    Enter password      ${password}
    Click login
    sleep   3s