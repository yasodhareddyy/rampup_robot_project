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


####################################################
#Open HR-OS Portal and Login Keywords

Open HR-OS Bowser URL
    Open Browser    ${HR-OS_URL}    ${BROWSER}

HR_OS Login Click TerralogicLogin
    Click Element       ${xpath_clickTerralogicLogin}
    Sleep    4

Open New Window Sign in - Google Accounts aswell Login Information
    Switch Window    Sign in - Google Accounts
    Input Text    ${xpath_id_txtEmail}      ${HR_OS_ValidUserName}
    Sleep    4
    Click Element    ${xpath_ClickElementNext}
    Sleep    4
    Input Text    ${xpath_name_txtPassword}     ${HR_OS_ValidPassword}
    Sleep    4
    Click Element    ${xpath_ClickElementNext}
    Sleep    40

Open New Window HR-OS Home page
    Switch Window    Home
    Log To Console    Hr_OS Login Successful verified !!!!!



