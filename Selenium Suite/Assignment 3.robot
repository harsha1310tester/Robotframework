*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem
*** Variables ***

*** Test Cases ***
TC 01
    Append To Environment Variable      Path        ${EXECDIR}${/}Driver
    Open Browser        https://www.db4free.net/        gc
    Click Element       //b[normalize-space()='phpMyAdmin »']
    