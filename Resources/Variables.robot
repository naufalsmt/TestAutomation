*** Settings ***
Library  SeleniumLibrary
Library  BuiltIn

*** Variables ***
#   login fields
${email_id}    id:email
${pass}    id:password
${login_btn}    xpath://*[@id="root"]/div/div/div/div/div/div/form/div[3]/div/button

#   page headings
${TEXT}     Dashboard
${careplan}     Careplanmaster
${event}     Event
${promotion}     Promotion
${email}     Email
${education}     Education
${consent}     Consent
${alert}     Clinical Alerts
${history}     History
${report}     Clinical Alert Report
${upload}     Patient Upload

#   menu links
${careplan_link}    xpath://*[@id="root"]/div/div/div/div/div/ul/li[2]/a
${event_link}    xpath://*[@id="root"]/div/div/div/div/div/ul/li[3]/a
${promotion_link}    xpath://*[@id="root"]/div/div/div/div/div/ul/li[4]/a
${email_link}    xpath://*[@id="root"]/div/div/div/div/div/ul/li[5]/a
${education_link}    xpath://*[@id="root"]/div/div/div/div/div/ul/li[6]/a
${consent_link}    xpath://*[@id="root"]/div/div/div/div/div/ul/li[7]/a
${alert_link}    xpath://*[@id="root"]/div/div/div/div/div/ul/li[8]/a
${history_link}    xpath://*[@id="root"]/div/div/div/div/div/ul/li[9]/a
${report_link}    xpath://*[@id="root"]/div/div/div/div/div/ul/li[10]/a
${upload_link}    xpath://*[@id="root"]/div/div/div/div/div/ul/li[11]/a

#   alert test counts
${sa_cnt}   xpath://*[@id="pr_id_4_content"]/div/div/div[1]/div[1]/div/div[1]/div/h3
${cv_cnt}   xpath://*[@id="pr_id_4_content"]/div/div/div[1]/div[2]/div/div[1]/div/h3
${crv_cnt}   xpath://*[@id="pr_id_4_content"]/div/div/div[1]/div[3]/div/div[1]/div/h3
${lv_cnt}   xpath://*[@id="pr_id_4_content"]/div/div/div[2]/div/div/div[1]/div/h3
${bpa_cnt}   xpath://*[@id="pr_id_2_content"]/div/div/div[1]/div/div[1]/div/h3
${bpc_cnt}   xpath://*[@id="pr_id_2_content"]/div/div/div[2]/div/div[1]/div/h3
${bsa_cnt}   xpath://*[@id="pr_id_3_content"]/div/div/div[1]/div/div[1]/div/h3
${bsc_cnt}   xpath://*[@id="pr_id_3_content"]/div/div/div[2]/div/div[1]/div/h3
${alert_cnt}   xpath://*[@id="root"]/div/div/div/div/div/ul/li[8]/a

#   alert count links
${sa_link}  xpath://*[@id="pr_id_4_content"]/div/div/div[1]/div[1]/div/div[1]/div/h3
${tbl_cnt_txt}  xpath://*[@id="root"]/div/div/div/main/div[2]/div/div[2]/div[3]/div
${bsc_link}  xpath://*[@id="pr_id_3_content"]/div/div/div[2]/div/div[1]/div/h3

#   table of report
${ext_search}     class:p-accordion-header
${ctgry_normal}     Normal
${ctgry_abnormal}     Abnormal
${messge}       No record found
${ctgry_fld}     xpath://*[@id="react-select-8-input"]
${apply_btn}     xpath://*[@id="pr_id_2_content_0"]/div/div/div[9]/button[1]
${tble_row}     xpath://*[@id="root"]/div/div/div/main/div[2]/div/div[2]/div[1]/div[2]/div/div[2]/table/tbody/tr
