*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem
*** Variables ***

*** Test Cases ***
TC 02
    Append To Environment Variable      Path        ${EXECDIR}${/}Driver
    Open Browser        https://www.pepperfry.com/        gc
    Maximize Browser Window
    Set Selenium Implicit Wait      30s
    Input Text      //input[@id='search']       bedsheets
    Click Element       //input[@id='searchButton']
    Click Element       //*[name()='circle' and contains(@cx,'15')]
    Input Text      //input[@placeholder='Search Brand']        Sleep Dove
    CLick Element       //label[@for='brandsnameSleep_Dove']
    Handle Alert        DISMISS
    Mouse Over      //div[@id='p_1_1_1740979']//a[@class='clip-add-to-cart-btn'][normalize-space()='Add To Cart']
    Click Element       //div[@id='p_1_1_1740979']//a[@class='clip-add-to-cart-btn'][normalize-space()='Add To Cart']

