*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem
*** Variables ***

*** Test Cases ***
TC01 Forloop
    FOR     ${i}    IN RANGE  1  11
    Log To Console      ${i}
    END
