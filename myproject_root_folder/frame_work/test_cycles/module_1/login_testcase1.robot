*** Settings ***
Library    SeleniumLibrary
Resource    ../../resources/keywords/common_keywords.robot
Resource    ../../resources/keywords/login_keywords.robot

*** Test Cases ***
TestCasse For Login
    TRY

        Open Login Page
        Maximize Browser URL                    # comman Keyword Maximize Browser URL
        Sigin Information
        Close Browser URL                       # comman Keyword Maximize Browser URL

        Log To Console    Login Successfully !!!!!!!
    EXCEPT
        Log To Console    Login Fail.......
    END