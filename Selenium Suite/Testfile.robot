*** Settings ***
Library  DateTime
Library  SeleniumLibrary
Library  OperatingSystem
*** Test Cases ***
TC4 browser page
    Append To Environment Variable      Path        ${EXECDIR}${/}Driver
    Open Browser        http://demo.openemr.io/b/openemr/interface/login/login.php?site=default     gc
    Maximize Browser Window
    Set Selenium Implicit Wait      30s
    Input Text      //*[@id="authUser"]     admin
    Input Password      //*[@id="clearPass"]        pass
    Select From List By Label       name=languageChoice     English (Standard)
    Click Element    xpath=//button[@type='submit']
    ${Title}        Get Title
    Log    ${Title}
    Log To Console    ${Title}

    Mouse Over      xpath=//div[text()='Patient/Client']
    Click Element       xpath=//div[text()='Patients']
    Select Frame        name=fin
    CLick Element       xpath=//input[@id='authUser']

