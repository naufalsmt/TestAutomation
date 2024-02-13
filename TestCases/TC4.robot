*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Variables.robot
Resource  ../Resources/Login.robot

*** Test Cases ***
VerifySATableCount
    open browser    ${URL}  ${Browser}
    maximize browser window
    LoginToApplication
    sleep   2s
    ClickClinicalAlert
    SAAlertCount

VerifyBSCTableCount
    open browser    ${URL}  ${Browser}
    maximize browser window
    LoginToApplication
    sleep   2s
    ClickClinicalAlert
    BloodSugarCount

*** Keywords ***
LoginToApplication
    input text  ${email_id}    ${user_name}
    input text  ${pass}     ${password}
    click element   ${login_btn}

ClickClinicalAlert
    click element   ${alert_link}
    sleep   2s

SAAlertCount
    ${sa}=    get text    ${sa_cnt}
    ${sa_int}=     Evaluate    int(${sa})
    log     ${sa_int}
    Run Keyword If  ${sa_int} > 0   TestSA
    ...     ELSE    TestEqual

TestSA
    ${sa}=    get text    ${sa_cnt}
    log     "count greater than 0"
    click element   ${sa_link}
    sleep   2s
    ${table_count}=     get text    ${tbl_cnt_txt}
    ${verification}   Evaluate    "${sa}" in "${table_count}"
    Should Be True  ${verification}

BloodSugarCount
    ${bsc}=    get text    ${bsc_cnt}
    ${bsc_int}=     Evaluate    int(${bsc})
    log     ${bsc_int}
    Run Keyword If  ${bsc_int} > 0   TestBS
    ...     ELSE    TestEqual

TestBS
    ${bsc}=    get text    ${bsc_cnt}
    log     "variable is greater than 0"
    click element   ${bsc_link}
    sleep   2s
    ${table_count}=     get text    ${tbl_cnt_txt}
    ${verification}   Evaluate    "${bsc}" in "${table_count}"
    Should Be True  ${verification}

TestEqual
    log     "variable is eqaul to 0"
    close Browser
