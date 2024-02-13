*** Settings ***
Library     SeleniumLibrary
Resource  ../Resources/Variables.robot
Resource  ../Resources/Login.robot

*** Test Cases ***
TestTableRows
    open browser    ${URL}  ${Browser}
    maximize browser window
    LoginAction
    NavigateToReport
    TableValidationNormal
    TableValidationAbnormal

*** Keywords ***
LoginAction
    input text      ${email_id}    ${user_name}
    input text      ${pass}     ${password}
    click element   ${login_btn}
    sleep   3s

NavigateToReport
    click element   ${report_link}
    sleep   3s

TableValidationNormal
    click element   ${ext_search}
    sleep   2s
    Press Keys      ${ctgry_fld}       ${ctgry_normal}
    sleep   1s
    Press Keys      ${ctgry_fld}    ENTER
    sleep   1s
    click element   ${apply_btn}
    sleep   3s
    ${rows}=    get element count   ${tble_row}
    ${rows_int}=    evaluate    int(${rows})

    Run Keyword If  ${rows_int} > 0     VerifyNormalTableRows
    ...     ELSE    MessageNormal

VerifyNormalTableRows
    ${rows}=    get element count   ${tble_row}
    log to console  Normal table contain ${rows} rows

MessageNormal
    log to console  Normal table contain ${messge}
    page should contain     ${messge}

TableValidationAbnormal
    Clear Element Text      ${ctgry_fld}
    sleep   1s
    Press Keys      ${ctgry_fld}       ${ctgry_abnormal}
    sleep   1s
    Press Keys      ${ctgry_fld}    ENTER
    sleep   1s
    click element   ${apply_btn}
    sleep   3s
    ${rows}=    get element count   ${tble_row}
    ${rows_int}=    evaluate    int(${rows})

    Run Keyword If  ${rows_int} > 0     VerifyAbnormalTableRows
    ...     ELSE    MessageAbnormal

VerifyAbnormalTableRows
    ${rows}=    get element count   ${tble_row}
    log to console  Abnormal table contain ${rows} rows

MessageAbnormal
    log to console  Abnormal table contain ${messge}
    page should contain     ${messge}


