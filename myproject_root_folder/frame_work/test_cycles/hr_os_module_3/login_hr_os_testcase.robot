*** Settings ***
Library    SeleniumLibrary
Resource    ../../resources/keywords/common_keywords.robot
Resource    ../../resources/keywords/hr_os_login_keywords.robot

*** Test Cases ***
Open HR-OS Portal and Login
    Open HR-OS Bowser URL
    Maximize Browser URL
    HR_OS Login Click TerralogicLogin
    Open New Window Sign In - Google Accounts Aswell Login Information
    Open New Window HR-OS Home Page

    Top Menu Of HR-OS Home Page
    Left menu of HR-OS Home Page

    Create A Time Sheet For A Week On Dialy Basis
    Update Or Edit Newly Created Time Sheet
    Delete Newly Created Time Sheet

    Create A Time Sheet For A Week On Weekly Basis
    #Update Or Edit Newly Created Time Sheet
    Delete Newly Created Time Sheet
    Close Browser URL