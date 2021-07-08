*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem
*** Variables ***

*** Test Cases ***
TC 01 Multipletabs
    Append To Environment Variable      Path        ${EXECDIR}${/}Driver
    Open Browser        https://www.db4free.net/        gc
    Maximize Browser Window
    Set Selenium Implicit Wait      30s
    Open Browser        http://demo.openemr.io/b/openemr/interface/login/login.php?site=default     gc
    Set Selenium Implicit Wait      30s
    ${att}      Get Element Attribute        //input[@id='authUser']        placeholder
    Log To Console      ${att}

TC 02 Table
    Append To Environment Variable      Path        ${EXECDIR}${/}Driver
    Open Browser        https://datatables.net/extensions/select/examples/initialisation/checkbox.html        gc
    Maximize Browser Window
    Set Selenium Implicit Wait      30s
    ${name}     Get Text        //td[normalize-space()='Airi Satou']
    Log To Console