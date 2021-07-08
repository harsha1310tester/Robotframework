*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem
*** Variables ***

*** Test Cases ***
TC 01
    Append To Environment Variable      Path        ${EXECDIR}${/}Driver
    Open Browser        https://magento.com/        gc
    Maximize Browser Window
    Set Selenium Implicit Wait      30s
    Click Element       //span[contains(text(),'Sign in')]
    Set Selenium Implicit Wait      30s
    Click Element       //input[@id='email']
    Input Text      //input[@id='email']        balaji0017@gmail.com
    Input Password  //div[@class='field password required spectrum-Form-item']//input[@id='pass']       balaji@12345
    Click Element       //div[@class='login-form__bottom']//button[@id='send2']
    ${Ttile}        Get Title
    Log     ${Ttile}
    Log To Console      ${Ttile}

    Click Element       //a[normalize-space()='Log Out']
    Close All Browsers


