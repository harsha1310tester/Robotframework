*** Settings ***
Documentation  Suite to handle test cases regarding Login

Resource    ../Resource/Base/Common_functionality.robot

Test Setup      Launch Browser
Test Teardown       End Browser
*** Test Cases ***
Verify Valid Credntial Tests
    Launch Browser
    Append To Environment Variable      Path        ${EXECDIR}${/}Driver
    Open Browser        https://demo.openemr.io/b/openemr/index.php      gc
    Maximize Browser Window
    Set Selenium Implicit Wait      25s
    Input Text      id=authUser    admin
    Input Password    id=clearPass    pass
    Select From List By Label    name=languageChoice    English (Indian)
    Click Element   xpath=//button[@type='submit']
    Wait Until Page Contains    Flow Board      50s
    Title Should Be    OpenEMR
    Close Browser
*** Keywords ***