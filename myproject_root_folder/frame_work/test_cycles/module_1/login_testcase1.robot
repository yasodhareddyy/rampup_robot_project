*** Settings ***
Library    SeleniumLibrary
Resource    Robot_Frame_work/rampup_task_robot/myproject_root_folder/frame_work/resources/keywords/common_keywords.robot
Resource    Robot_Frame_work/rampup_task_robot/myproject_root_folder/frame_work/resources/keywords/login_keywords.robot

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