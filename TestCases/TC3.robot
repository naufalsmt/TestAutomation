*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Variables.robot
Resource  ../Resources/Login.robot

*** Test Cases ***
VerifyAlertCount
    open browser    ${URL}  ${Browser}
    maximize browser window
    LoginToApplication
    sleep   2s
    ClickClinicalAlert
    AlertCount

*** Keywords ***
LoginToApplication
    input text  ${email_id}    ${user_name}
    input text  ${pass}     ${password}
    click element   ${login_btn}

ClickClinicalAlert
    click element   ${alert_link}
    sleep   2s
    page should contain     ${alert}

AlertCount
    ${sa}=    get text    ${sa_cnt}
    ${cv}=    get text    ${cv_cnt}
    ${crv}=    get text    ${crv_cnt}
    ${lv}=    get text    ${lv_cnt}
    ${count1}=   Evaluate   ${sa} + ${cv} + ${crv} + ${lv}
    log     Element Text: ${count1}

    ${bpa}=    get text    ${bpa_cnt}
    ${bpc}=    get text    ${bpc_cnt}
    ${count2}=   Evaluate   ${bpa} + ${bpc}
    log     Element Text: ${count2}

    ${bsa}=    get text    ${bsa_cnt}
    ${bsc}=    get text    ${bsc_cnt}
    ${count3}=   Evaluate   ${bsa} + ${bsc}
    log     Element Text: ${count3}

    ${tc}=  Evaluate    ${count1} + ${count2} + ${count3}
    log     Count: ${tc}

    ${get_alert_count}=    get text    ${alert_cnt}
    log     Total: ${get_alert_count}

    ${verification}   Evaluate    "${tc}" in "${get_alert_count}"
    Should Be True  ${verification}
