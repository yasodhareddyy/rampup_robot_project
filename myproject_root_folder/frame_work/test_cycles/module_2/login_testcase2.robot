*** Settings ***
Library    SeleniumLibrary
Resource    ../../resources/keywords/common_keywords.robot
Resource    ../../resources/keywords/login_keywords.robot

*** Test Cases ***
TestCasse For Second Login
    TRY
        Open Second Login Page
        Maximize Browser URL
        Login For Second URL Information
        Wait For Time
        Close Browser URL
        Log To Console    Login Successful !!!!!!
    EXCEPT
        Log To Console    Login Fail .....
    END