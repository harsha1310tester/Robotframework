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
    #Go To   https://www.db4free.net/phpMyAdmin/
    Click Element       //b[normalize-space()='phpMyAdmin »']

    #${url}      Get Location
    #Log To Console      ${url}

    Switch Window       New
    #Select From List By Label       id=sel-lang     English(United Kingdon)
    Input Text      //input[@id='input_username']       abc
    Input Password      //input[@id='input_password']       123abc
    CLick Element       //input[@id='input_go']
    Set Selenium Implicit Wait      10s
    ${error Message}        Get Text        xpath=(//div[@role='alert'])[2]
    #Get Text    //body/div[@id='page_content']/div[@class='container']/div[@class='row']/div[@class='col-12']/div[2]
    Log To Console      ${error Message}
    Switch Window       MAIN
    Title Should Be     db4free.net - MySQL Database for free
    Set Selenium Implicit Wait      10s
    Switch Window       phpMyAdmin
    Title Should Be     phpMyAdmin
    Set Selenium Implicit Wait      10s