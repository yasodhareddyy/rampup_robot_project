*** Settings ***
Library    SeleniumLibrary
Resource    Robot_Frame_work/rampup_task_robot/myproject_root_folder/frame_work/resources/variables/common_variables.robot

*** Keywords ***

Maximize Browser URL
    Maximize Browser Window
    Sleep    2

Close Browser URL
    Close Browser

Wait For Time
    Sleep    2

