*** Settings ***
Documentation  Suite to handle test cases regarding Login


Resource    ../Resource/Base/Common_functionality.robot

*** Test Cases ***
Verify InValid Credntial Tests
    Launch Browser
    Append To Environment Variable    Path      ${EXECDIR}${/}Driver
    Input Text      id=authUser    admin
    Input Password    id=clearPass    pass121
    Select From List By Label    name=languageChoice    English (Indian)
    Click Element   xpath=//button[@type='submit']
    Element Should Contain    //div[@class='alert alert-danger login-failure m-1']    Invalid username or password
    End Browser
*** Keywords ***