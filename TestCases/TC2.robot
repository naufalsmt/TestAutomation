*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/Variables.robot
Resource  ../Resources/Login.robot

*** Test Cases ***
MenuLinkTest
    open browser    ${URL}  ${Browser}
    maximize browser window
    set selenium speed  1s
    LoginToApplication
    ClickSidepanelMenus

*** Keywords ***
LoginToApplication
    input text  ${email_id}    ${user_name}
    input text  ${pass}    ${password}
    click element   ${login_btn}

ClickSidepanelMenus
    click element   ${careplan_link}
    page should contain     ${careplan}

    click element   ${event_link}
    page should contain     ${event}

    click element   ${promotion_link}
    page should contain     ${promotion}

    click element   ${email_link}
    page should contain     ${email}

    click element   ${education_link}
    page should contain     ${education}

    click element   ${consent_link}
    page should contain     ${consent}

    click element   ${alert_link}
    page should contain     ${alert}

    click element   ${history_link}
    page should contain     ${history}

    click element   ${report_link}
    page should contain     ${report}

    click element   ${upload_link}
    page should contain     ${upload}

