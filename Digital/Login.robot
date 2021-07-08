*** Settings ***
Library  SeleniumLibrary
Library  DateTime
Library  OperatingSystem

*** Variables ***

*** Test Cases ***
TC Login
    Append To Environment Variable      path       ${EXECDIR}${/}Driver
    Open Browser        https://mobile-uat.ventivcloud.com/login?redirect=%2F       gc
    Maximize Browser Window
    Click Element       id=username-label
    Input Text      //*[@id="username"]     shri.udyavara@ventivtech.com

