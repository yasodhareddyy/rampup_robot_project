*** Settings ***
Library    SeleniumLibrary
Library    Collections
Library    DateTime
Resource    ../page_objects/hr_os_login_xpaths.robot
Resource    ../variables/common_variables.robot
Resource    ../variables/hr_os_login_variables.robot

*** Keywords ***
#Open HR-OS Portal and Login Keywords

Open HR-OS Bowser URL
    Open Browser    ${HR-OS_URL}    ${BROWSER}
    Sleep    5

HR_OS Login Click TerralogicLogin
    Wait Until Element Is Visible    ${xpath_clickTerralogicLogin}
    Click Element       ${xpath_clickTerralogicLogin}
    Sleep    10

Open New Window Sign in - Google Accounts aswell Login Information
    Switch Window    Sign in - Google Accounts
    Input Text    ${xpath_id_txtEmail}      ${HR_OS_ValidUserName}
    Sleep    10
    Click Element    ${xpath_ClickElementNext}
    Sleep    6
    Input Text    ${xpath_name_txtPassword}     ${HR_OS_ValidPassword}
    Sleep    8
    Click Element    ${xpath_ClickElementNext}
    Sleep    50

Open New Window HR-OS Home page
    Switch Window    Home
    Log To Console    Hr_OS Login Successful verified !!!!!


Top menu of HR-OS Home Page
# Selecting Flag
    Click Element    ${xpath_selectCountry}
    Sleep    2
    Click Element    ${xpath_select_INDIA}
    Sleep    10
    #Click Element    ${xpath_DashBoard}

# Selecting Light and Dark Colour Theams

    Click Element    ${xpath_clickOnLightDark}
    Sleep    2
    Click Element    ${xpath_click_OnDark}
    Sleep    2
    Click Element    ${xpath_click_OnLight}
    Sleep    2
    Click Element    ${xpath_clickOnCloseMark}
    Sleep    2

# Selecting Notificatins

    Click Element    ${xpath_clickNotification}
    Sleep    2
    Click Element    ${xpath_clickOnCloseMark}
    Sleep    2

# Top TimeSheet
    Click Element    ${xapth_clickTop_timesheet}
    Sleep    4

# questions
    Click Element    ${xpath_question_help}
    Sleep    2
    Click Element    ${xpath_clickOnMyTickets}
    Sleep    4

# Serch Element
    Click Element    ${xpath_ClickSearch}
    Sleep    4
#    Input Text        ${xapth_Search_Element}    ${HR_OS_SearchEmpNmae}
#    Sleep    2
    Reload Page
    Sleep    10

    Log To Console    Top menu of HR-OS Home Page Successful !!!!!!!!!!!!!!!!!!!!

Left menu of HR-OS Home Page
#DashBoard
    Click Element    ${xpath_DashBoard}
    Sleep    8
    Click Element    ${xpath_ClickHoliday}
    Sleep    8
# Dairectory
    Click Element    ${xpath_ClickDairectory}
    Sleep    8
    Click Element    ${xpath_DairectorySearchEmp}
    Sleep    2
    Input Text    ${xpath_DairectorySearchEmp}      ${Dairectory_Search_Emp}
    Sleep    2
# Onbording
    Click Element       ${xapth_OnBoarding}
    Sleep    8

# OffBoarding
    Click Element    ${xapth_OffBoarding}
    Sleep    8

# TimeSheet
    Click Element    ${xapth_TimeSheet}
    Sleep    8


# Reoorts
    Click Element    ${xpath_Reports}
    Sleep    8

    Log To Console    Left menu of HR-OS Home Page Successful !!!!!!!!!!!!!!!!!


Get the Dates
    ${Today_Date}=    Get Current Date    result_format=%Y-%m-%d
    ${year}=    Convert To String    ${Today_Date.split('-')[0]}
    ${month}=    Convert To String    ${Today_Date.split('-')[1]}
    ${day}=    Convert To Integer    ${Today_Date.split('-')[2]}
    ${date_list}=    Create List
    ${day_of_week}=    Evaluate    datetime.datetime.strptime('${Today_Date}', '%Y-%m-%d').strftime('%A')
    WHILE    len(${date_list}) < 5
        IF    '${day_of_week}' not in ['Saturday', 'Sunday']
            ${day_len}=    Evaluate    len('${day}')
            IF    ${day_len} < 2
                Append To List    ${date_list}    ${year}-${month}-0${day}
            ELSE
                Append To List    ${date_list}    ${year}-${month}-${day}
            END
        END
        ${day}=    Evaluate    ${day} + 1
        ${Today_Date}=    Set Variable    ${year}-${month}-${day}
        ${day_of_week}=    Evaluate    datetime.datetime.strptime('${Today_Date}', '%Y-%m-%d').strftime('%A')
    END
    [Return]    ${date_list}

Create a Time Sheet for a week on Dialy basis
    Wait Until Element Is Visible    ${xapth_TimeSheet}
    Click Element       ${xapth_TimeSheet}
    Sleep    30

    ${dates}    Get The Dates
    FOR    ${i}    IN    @{dates}

        Click Element       ${xpath_AddTak}
        Sleep    5
        Click Element    ${xpath_DailyBase_StartDate}
        Press Keys    ${xpath_DailyBase_StartDate}  ${i}    ENTER
        Press Keys    ${xpath_DailyBase_EndDate}    ${i}    ENTER

        Sleep    4
        Press Keys      ${xpath_StartingTime}   9:00 am     ENTER
        Sleep    4

        Press Keys      ${xpath_EndingTime}     6:00 pm     ENTER
        Sleep    4

        Click Element    ${id_xpath_Project}
        Input Text    ${id_xpath_Project}   Rampup
        Press Keys    ${xpath_EnterProject}     ENTER
        Sleep    4
        Input Text    ${id_xpath_Task}  UI Automation
        Sleep    2
        Input Text    ${id_xpath_Description}       Worked on assignments
        Sleep    2
        Click Element    ${xpath_TimeSheetSubmit}
        Sleep    40


    END
    Log To Console    Create a Time Sheet for a week on Dialy basis Successful !!!!!!!!!!


Create a Time Sheet for a week on Weekly Basis

#    Click Element    ${xapth_TimeSheet}
#    Sleep    30

    Click Element    ${xpath_WeeklyBase}
    Sleep    15


    Click Element       ${xpath_AddTak}
    Sleep    5

    Click Element       ${id_xpath_ClickDate}
    Click Element       ${xpath_CurrentDate}
    Sleep    2
    Click Element       ${xpath_OnSixthDay}
    Sleep    5

    Press Keys      ${xpath_StartingTime}   9:00 am     ENTER
    Sleep    4

    Press Keys      ${xpath_EndingTime}     6:00 pm     ENTER

    Click Element    ${id_xpath_Project}
    Input Text    ${id_xpath_Project}   Rampup
    Press Keys    ${xpath_EnterProject}     ENTER
    Sleep    2
    Input Text    ${id_xpath_Task}  UI Automation
    Sleep    2
    Input Text    ${id_xpath_Description}       Worked on assignments
    Sleep    2
    Click Element    ${xpath_TimeSheetSubmit}
    Sleep    20

    Log To Console    Create a Time Sheet for a week on Weekly Basis Successful !!!!!!



Update Or Edit Newly Created Time Sheet
    Wait Until Element Is Visible    ${xapth_TimeSheet}
    Click Element       ${xapth_TimeSheet}
    Sleep    20
    FOR    ${day}    IN RANGE    1    8    # Loop from day 1 to day 7 (inclusive)
        ${element_visible}=    Run Keyword And Return Status    Element Should Be Visible    ${xpath_editTimeSheetDetails}
        Sleep    20

        IF      ${element_visible}    # If element is visible
            Wait Until Element Is Visible   ${xpath_editTimeSheetDetails}
            Click Element    ${xpath_editTimeSheetDetails}
            Sleep    10
            Clear Element Text      ${id_xpath_updateDescription}
            Input Text    ${id_xpath_updateDescription}    ${update_desciptionTimeSheet}
            Click Element    ${xpath_UpdateTimeSheet}
            Sleep    30
            Click Element    ${xpath_ForwordDate}
            Sleep    6

        ELSE
            Click Element    ${xpath_ForwordDate}
            Sleep    6
        END

        ${day}=    Evaluate    ${day} + 1
        # Optionally, you can add logic to break the loop if needed
        # Example: If you want to break after 7 days
        Run Keyword If    ${day} > 7    Exit For Loop
    END

    Log To Console    Update Or Edit Newly Created Time Sheet successful !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


Delete newly created time sheet
    Wait Until Element Is Visible    ${xapth_TimeSheet}
    Click Element       ${xapth_TimeSheet}
    Sleep    20


    FOR    ${day}    IN RANGE    1    8    # Loop from day 1 to day 7 (inclusive)
        ${element_visible}=    Run Keyword And Return Status    Element Should Be Visible    ${xpath_DeleteTimeSheet}

        IF    ${element_visible}    # If element is visible
            Wait Until Element Is Visible   ${xpath_DeleteTimeSheet}
            Click Element    ${xpath_DeleteTimeSheet}
            Sleep    5
            Wait Until Element Is Visible    ${xpath_DeleteTask}
            Click Element    ${xpath_DeleteTask}
            Sleep    10
            Click Element    ${xpath_ForwordDate}
            Sleep    6
        ELSE    # If element is not visible
            Wait Until Element Is Visible    ${xpath_ForwordDate}
            Click Element    ${xpath_ForwordDate}
            Sleep    6
        END
        ${day}=    Evaluate    ${day} + 1
        # Optionally, you can add logic to break the loop if needed
        # Example: If you want to break after 7 days
        Run Keyword If    ${day} > 7    Exit For Loop
    END
    Log To Console      Delete Newly Created Time Sheet Successful !!!!!!!!!!!!!!













