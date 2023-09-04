*** Settings ***
Library    SeleniumLibrary
Resource    Robot_Frame_work/rampup_task_robot/myproject_root_folder/frame_work/resources/page_objects/login_po.robot
Resource    Robot_Frame_work/rampup_task_robot/myproject_root_folder/frame_work/resources/keywords/common_keywords.robot

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
