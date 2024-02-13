*** Settings ***
Suite Setup  log to console     open browser
Suite Teardown  log to console      close the browser

Test Setup  log to console      login to the application
Test Teardown  log to console       logout from the application

*** Test Cases ***
Test Prepaid
    log to console      This is Prepard recharge testcases

Test Postpaid
    log to console      This is Postpaid recharge testcases

Test Search
    log to console      This is Search function testcases

Test Advane search
    log to console      This is Advance search function testcases
