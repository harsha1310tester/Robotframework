*** Settings ***
Documentation       File to Handle Browser application configurations

Library  SeleniumLibrary
Library  OperatingSystem

*** Keywords ***
Launch Browser
    Set Test Documentation    This with Open Chrome Browser
    Append To Environment Variable      Path        ${EXECDIR}${/}Driver
    Open Browser        https://demo.openemr.io/b/openemr/index.php      gc
    Maximize Browser Window
    Set Selenium Implicit Wait      25s

End Browser
    Close Browser