*** Settings ***
Documentation   File to handle elements in Login page

Library     SeleniumLibrary


*** Variables ***
${Username}     id=authUser


*** Keywords ***

Enter Username
    Arguments
    Input Text      ${Username}     admin

