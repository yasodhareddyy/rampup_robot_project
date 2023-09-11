*** Settings ***
Library    SeleniumLibrary
Resource    ../variables/common_variables.robot

*** Keywords ***

Maximize Browser URL
    Maximize Browser Window
    Sleep    3

Close Browser URL
    Close Browser

Wait For Time
    Sleep    2

