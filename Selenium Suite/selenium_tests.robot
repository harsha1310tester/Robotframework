*** Settings ***
Library  DateTime
Library  SeleniumLibrary
Library  OperatingSystem
*** Variables ***

*** Test Cases ***
TC1 Get Datetime
    ${currentdate}      Get Current Date
    Log To Console      ${currentdate}

TC2 Print Name
    ${Name}     Set Variable        Tester
    Log To Console      ${Name}
    Set Local Variable      ${Name1}     Tester1
    Log To Console      ${Name1}

TC3 Test To Open browser
    Append To Environment Variable      Path        ${EXECDIR}${/}Driver
    Open Browser    https://www.google.com      gc
    Maximize Browser Window
    Close Browser



TC4 Testing
    Close Browser
    Append To Environment Variable      path       ${EXECDIR}${/}Driver
    Open Browser    url=http://demo.openemr.io/b/openemr/interface/login/login.php?site=default      browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Input Text    xpath=//input[@id='authUser']    admin
    Input Password    xpath=//input[@id='clearPass']    pass
    Select From List By Label    xpath=//select[@name='languageChoice']     English (Indian)
    Click Button    xpath=//button[text()[contains(.,'Login')]]
    ${title}    Get Title
    Log    ${title}
    Log To Console    ${title}

    Mouse Over      //div[@role="button" and .='Patient/Client']
    Click Button    //div[@rclass="menuLabel" and .='Patients']
    Select Frame    //frame[@name="fin"]
    Click Button    //button[@id="create_patient_btn1"]
    //Close All Browsers

     CLick Element       //*[@id="LoginScreen-nextButton"]/span[1]/svg
    Input Password      //*[@id="login-password"]       Password189!
    Click Element       //*[@id="LoginScreen-signinButton"]/span[1]