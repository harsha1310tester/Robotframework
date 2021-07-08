*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem
*** Variables ***

*** Test Cases ***
TC 02
    Append To Environment Variable      Path        ${EXECDIR}${/}Driver
    Open Browser        https://www.redbus.in/        gc
    Maximize Browser Window
    Set Selenium Implicit Wait      30s
    Click Element       //i[@id='i-icon-profile']
    CLick Element       //li[@id='signInLink']
    Select Frame       /html/body/div[6]/div/div[2]/div/div/div[3]/iframe
    Input Text      //input[@id='mobileNoInp']      787878
