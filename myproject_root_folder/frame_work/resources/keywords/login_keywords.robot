*** Settings ***
Library    SeleniumLibrary


Resource    ../page_objects/login_po.robot
Resource    ../variables/common_variables.robot
Resource    ../variables/login_variables.robot

*** Keywords ***

Open Login Page
    Open Browser        ${login_URL_1}    ${BROWSER}

#    Maximize Browser Window
#    Sleep    2

#Login with Valid Information
Sigin Information
    Input Text      ${txt_LoginUserName}      ${login_ValidUsername}
    Input Text      ${txt_LoginUserPassword}      ${login_ValidPassword}
    Click Button    ${txt_btn_submit}



Open Second Login Page
    Open Browser    ${login_URL_2}      ${BROWSER}

#Login Second URL with Valid Information

Login For Second URL Information
    Input Text      ${txt_1_loginEmail}         ${login_ValidUsername}
    Input Text      ${txt_1_loginPassword}      ${login_ValidPassword}
    Click Button    ${txt_1_loginButton}






