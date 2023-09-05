*** Settings ***
Library    SeleniumLibrary
Resource    Robot_Frame_work/rampup_task_robot/myproject_root_folder/frame_work/resources/variables/login_variables.robot
Resource    Robot_Frame_work/rampup_task_robot/myproject_root_folder/frame_work/resources/variables/common_variables.robot
Resource    Robot_Frame_work/rampup_task_robot/myproject_root_folder/frame_work/resources/page_objects/login_po.robot

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






