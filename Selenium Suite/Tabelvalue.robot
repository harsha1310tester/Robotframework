*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem
*** Variables ***

*** Test Cases ***
TC 01 Table
    Append To Environment Variable      Path        ${EXECDIR}${/}Driver
    Open Browser        https://datatables.net/extensions/select/examples/initialisation/checkbox.html        gc
    Maximize Browser Window
    Set Selenium Implicit Wait      30s
    ${name}     Get Text        //td[normalize-space()='Airi Satou']
    Log To Console      ${name}
    ${entries}      Get Text    //div[@id='example_info']
    Log To Console      ${entries}